import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:meta/meta.dart';

import '../../attendance_shared.dart';

part 'auth_watcher_bloc.freezed.dart';
part 'auth_watcher_event.dart';
part 'auth_watcher_state.dart';

class AuthWatcherBloc extends Bloc<AuthWatcherEvent, AuthWatcherState> {
  final IAuth _auth;

  StreamSubscription authSubscription;

  AuthWatcherBloc(
    this._auth,
  ) : super(const AuthWatcherState.initial());

  @override
  Stream<AuthWatcherState> mapEventToState(
    AuthWatcherEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        authSubscription ??= _auth.getSignedInUser().listen((event) async {
          final userOption = await event;
          add(AuthWatcherEvent.authReceived(userOption));
        });
      },
      authReceived: (e) async* {
        yield e.userOption.fold(
          () => const AuthWatcherState.unauthenticated(),
          (a) {
            // _crashReporting.setUserIdentifier(
            //   a.uId.getOrElse("NA"),
            //   a.emailAddress.getOrElse("NA"),
            //   a.name.getOrElse("NA"),
            // );

            // _analytics.logUserSignIn(vrishamUser: a);
            return AuthWatcherState.authenticated(a);
          },
        );
      },
      signedOut: (e) async* {
        // _analytics.logUserSignOut(vrishamUser: e.user);
        await _auth.signOut();
        yield const AuthWatcherState.unauthenticated();
      },
    );
  }

  @override
  Future<void> close() {
    authSubscription.cancel();
    return super.close();
  }
}
