import 'package:dartz/dartz.dart';
import 'package:attendance_shared/domain/auth/auth_domain.dart';
import 'package:flutter/foundation.dart';

import 'auth_failures.dart';
import 'user.dart';
import '../core/value_objects.dart';

abstract class IAuth {
  Stream<Future<Option<AttendanceUser>>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> updateUserName({
    @required Name name,
  });

  Future<Either<AuthFailure, Unit>> loginEmailAndPassword({
    @required EmailAddress email,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> registerEmailAndPassword({
    @required EmailAddress email,
    @required Password password,
    @required Name name,
    @required UserRole role,
  });

  Future<Either<AuthFailure, Unit>> forgotPassword({
    @required EmailAddress email,
  });

  Future<void> signOut();
}
