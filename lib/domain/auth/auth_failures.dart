import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailure<T> with _$AuthFailure<T> {
  const factory AuthFailure.canceledByUser() = FCanceledByUser<T>;
  const factory AuthFailure.serverError() = FServerError<T>;
  const factory AuthFailure.notAllowed() = FNotAllowed<T>;
  const factory AuthFailure.accountExistWithDifferentCredential() =
      _FAccountExistWithDifferentCredential<T>;
  const factory AuthFailure.invalidCredential() = _InvalidCredential<T>;
  const factory AuthFailure.invalidEmailPasswordCombination() =
      FInvalidEmailPasswordCombination<T>;
  const factory AuthFailure.userNotFound() = FUserNotFound<T>;
  const factory AuthFailure.invalidEmail() = FInvalidEmail<T>;
  const factory AuthFailure.invalidEmailOrPasswordValue() =
      FInvalidEmailOrPasswordValue<T>;

  const factory AuthFailure.emailAlreadyExist() = FemailAlreadyExist<T>;
}
