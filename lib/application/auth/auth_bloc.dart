import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/auth_inteface.dart';
import '../../domain/auth/user.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuth _auth;

  AuthBloc(this._auth) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        // debugPrint("*******************************************");
        // final userOption =  _auth.getSignedInUser().listen((event) { });
        // yield userOption.fold(
        //   () => const AuthState.unauthenticated(),
        //   (user) => AuthState.authenticated(user),
        // );
      },
      signedOut: (e) async* {
        await _auth.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
