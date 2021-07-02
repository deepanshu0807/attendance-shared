import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';

import 'package:firebase_auth/firebase_auth.dart';

import '../../attendance_shared.dart';
import '../core/firebase_extensions.dart';

class FirebaseAuthService implements IAuth {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  String otpVerCode = "";

  FirebaseAuthService(this._auth, this._firestore);
  @override
  Stream<Future<Option<AttendanceUser>>> getSignedInUser() async* {
    try {
      yield* _auth.authStateChanges().map((user) async {
        if (user == null) {
          return Future.value(none<AttendanceUser>());
        } else {
          final idToken = await user.getIdTokenResult(true);
          final claims = idToken.claims;
          return some(user.toDomain(claims));
        }
      }).onErrorReturnWith((e) {
        debugPrint("ERR:$e");

        return Future.value(none());
      });
    } catch (e) {
      debugPrint("ERR:getSignedInUser:#################### $e");
      yield Future.value(none());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotPassword({EmailAddress email}) async {
    final emailStr = email.getOrCrash();
    try {
      await _auth.sendPasswordResetEmail(email: emailStr);
      return const Right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint("FirebaseAuthException $emailStr $e");
      switch (e.code) {
        case "ERROR_USER_NOT_FOUND":
          return const Left(AuthFailure.userNotFound());
          break;
        case "ERROR_WRONG_PASSWORD":
          return const Left(AuthFailure.invalidEmailOrPasswordValue());
          break;
        case "ERROR_INVALID_CREDENTIAL":
          return const Left(AuthFailure.invalidCredential());
          break;
        case "ERROR_USER_MISMATCH":
          return const Left(AuthFailure.invalidCredential());
          break;
        case "ERROR_EMAIL_ALREADY_IN_USE":
          return const Left(AuthFailure.emailAlreadyExist());
          break;
        case "ERROR_CREDENTIAL_ALREADY_IN_USE":
          return const Left(AuthFailure.emailAlreadyExist());
          break;
        case "ERROR_INVALID_EMAIL":
          return const Left(AuthFailure.invalidEmail());
          break;
        default:
          return const Left(AuthFailure.invalidEmailPasswordCombination());
      }
    } catch (e) {
      debugPrint("ERR::$e");
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loginEmailAndPassword(
      {EmailAddress email, Password password}) async {
    final emailStr = email.getOrCrash();
    final pwdStr = password.getOrCrash();
    UserCredential authResult;
    try {
      authResult = await _auth.signInWithEmailAndPassword(
        email: emailStr,
        password: pwdStr,
      );
      if (authResult.user != null) {
        return const Right(unit);
      } else {
        return const Left(AuthFailure.userNotFound());
      }
    } on FirebaseAuthException catch (e) {
      debugPrint("FirebaseAuthException $emailStr $e");
      switch (e.code) {
        case "ERROR_USER_NOT_FOUND":
          return const Left(AuthFailure.userNotFound());
          break;
        case "ERROR_WRONG_PASSWORD":
          return const Left(AuthFailure.invalidEmailOrPasswordValue());
          break;
        case "ERROR_INVALID_CREDENTIAL":
          return const Left(AuthFailure.invalidCredential());
          break;
        case "ERROR_USER_MISMATCH":
          return const Left(AuthFailure.invalidCredential());
          break;
        case "ERROR_EMAIL_ALREADY_IN_USE":
          return const Left(AuthFailure.emailAlreadyExist());
          break;
        case "ERROR_CREDENTIAL_ALREADY_IN_USE":
          return const Left(AuthFailure.emailAlreadyExist());
          break;
        case "ERROR_INVALID_EMAIL":
          return const Left(AuthFailure.invalidEmail());
          break;
        default:
          return const Left(AuthFailure.invalidEmailPasswordCombination());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerEmailAndPassword(
      {EmailAddress email, Password password, Name name, UserRole role}) async {
    final emailStr = email.getOrCrash();
    final pwdStr = password.getOrCrash();
    // final nameStr = name.getOrCrash();
    // final roleStr = role.toValueString();
    // final c = await _firestore.users();

    UserCredential authResult;
    try {
      authResult = await _auth.createUserWithEmailAndPassword(
        email: emailStr,
        password: pwdStr,
      );
      if (authResult.user != null) {
        final empUser = AttendanceUser(
            uId: UniqueId.fromUniqueString(authResult.user.uid),
            name: name,
            emailAddress: email,
            phoneNumber: PhoneNumber(""),
            role: role,
            lastSignInDateTime: DateTime.now(),
            isApproved: false);
        try {
          final cRef = await _firestore.users();
          final cDto = AttendanceUserDtos.fromDomain(empUser);
          final jsonX = cDto.toJson();
          await cRef.doc(cDto.id).set(jsonX, SetOptions(merge: true));
          return right(unit);
        } catch (e) {
          // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
          debugPrint("ERR:$e\n\n%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n");
          //return left(const InfraFailure.serverError());
        }
        // await c.doc(authResult.user.uid).set({
        //   'name': nameStr,
        //   'emailAddress': emailStr,
        //   'role': roleStr,
        //   "uId": authResult.user.uid,
        //   'isApproved': false,
        //   "picUrl": "",
        //   "phoneNumber": "",
        // });
        // return const Right(unit);
      } else {
        return const Left(AuthFailure.accountExistWithDifferentCredential());
      }
    } on FirebaseAuthException catch (e) {
      debugPrint("FirebaseAuthException $emailStr $e");
      switch (e.code) {
        case "ERROR_USER_NOT_FOUND":
          return const Left(AuthFailure.userNotFound());
          break;
        case "ERROR_WRONG_PASSWORD":
          return const Left(AuthFailure.invalidEmailOrPasswordValue());
          break;
        case "ERROR_INVALID_CREDENTIAL":
          return const Left(AuthFailure.invalidCredential());
          break;
        case "ERROR_USER_MISMATCH":
          return const Left(AuthFailure.invalidCredential());
          break;
        case "ERROR_EMAIL_ALREADY_IN_USE":
          return const Left(AuthFailure.emailAlreadyExist());
          break;
        case "ERROR_CREDENTIAL_ALREADY_IN_USE":
          return const Left(AuthFailure.emailAlreadyExist());
          break;
        case "ERROR_INVALID_EMAIL":
          return const Left(AuthFailure.invalidEmail());
          break;
        default:
          return const Left(AuthFailure.invalidEmailPasswordCombination());
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
    return;
  }

  AuthFailure _mapFirebaseAuthExceptionToAuthFailure(FirebaseAuthException e) {
    switch (e.code) {
      case "account-exists-with-different-credential":
        return const AuthFailure.accountExistWithDifferentCredential();
        break;
      case "invalid-credential":
        return const AuthFailure.invalidCredential();
        break;
      case "operation-not-allowed":
        return const AuthFailure.notAllowed();
        break;
      case "user-disabled":
        return const AuthFailure.userNotFound();
        break;
      case "user-not-found":
        return const AuthFailure.userNotFound();
        break;
      case "wrong-password":
        return const AuthFailure.invalidEmailPasswordCombination();
        break;
      case "invalid-email":
        return const AuthFailure.invalidEmail();
      default:
        return const AuthFailure.serverError();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updateUserName({Name name}) async {
    try {
      final user = _auth.currentUser;
      // UserInfo info = UserInfo(_data)
      await user.updateProfile(displayName: name.getOrElse(""));
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}
