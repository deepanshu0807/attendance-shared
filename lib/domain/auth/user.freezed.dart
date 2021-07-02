// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AttendanceUserTearOff {
  const _$AttendanceUserTearOff();

// ignore: unused_element
  _AttendanceUser call(
      {@required UniqueId uId,
      @required Name name,
      @required EmailAddress emailAddress,
      String picUrl,
      @required PhoneNumber phoneNumber,
      @required DateTime lastSignInDateTime}) {
    return _AttendanceUser(
      uId: uId,
      name: name,
      emailAddress: emailAddress,
      picUrl: picUrl,
      phoneNumber: phoneNumber,
      lastSignInDateTime: lastSignInDateTime,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AttendanceUser = _$AttendanceUserTearOff();

/// @nodoc
mixin _$AttendanceUser {
  UniqueId get uId;
  Name get name;
  EmailAddress get emailAddress;
  String get picUrl;
  PhoneNumber get phoneNumber;
  DateTime get lastSignInDateTime;

  @JsonKey(ignore: true)
  $AttendanceUserCopyWith<AttendanceUser> get copyWith;
}

/// @nodoc
abstract class $AttendanceUserCopyWith<$Res> {
  factory $AttendanceUserCopyWith(
          AttendanceUser value, $Res Function(AttendanceUser) then) =
      _$AttendanceUserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId uId,
      Name name,
      EmailAddress emailAddress,
      String picUrl,
      PhoneNumber phoneNumber,
      DateTime lastSignInDateTime});
}

/// @nodoc
class _$AttendanceUserCopyWithImpl<$Res>
    implements $AttendanceUserCopyWith<$Res> {
  _$AttendanceUserCopyWithImpl(this._value, this._then);

  final AttendanceUser _value;
  // ignore: unused_field
  final $Res Function(AttendanceUser) _then;

  @override
  $Res call({
    Object uId = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object picUrl = freezed,
    Object phoneNumber = freezed,
    Object lastSignInDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      uId: uId == freezed ? _value.uId : uId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      picUrl: picUrl == freezed ? _value.picUrl : picUrl as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      lastSignInDateTime: lastSignInDateTime == freezed
          ? _value.lastSignInDateTime
          : lastSignInDateTime as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$AttendanceUserCopyWith<$Res>
    implements $AttendanceUserCopyWith<$Res> {
  factory _$AttendanceUserCopyWith(
          _AttendanceUser value, $Res Function(_AttendanceUser) then) =
      __$AttendanceUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId uId,
      Name name,
      EmailAddress emailAddress,
      String picUrl,
      PhoneNumber phoneNumber,
      DateTime lastSignInDateTime});
}

/// @nodoc
class __$AttendanceUserCopyWithImpl<$Res>
    extends _$AttendanceUserCopyWithImpl<$Res>
    implements _$AttendanceUserCopyWith<$Res> {
  __$AttendanceUserCopyWithImpl(
      _AttendanceUser _value, $Res Function(_AttendanceUser) _then)
      : super(_value, (v) => _then(v as _AttendanceUser));

  @override
  _AttendanceUser get _value => super._value as _AttendanceUser;

  @override
  $Res call({
    Object uId = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object picUrl = freezed,
    Object phoneNumber = freezed,
    Object lastSignInDateTime = freezed,
  }) {
    return _then(_AttendanceUser(
      uId: uId == freezed ? _value.uId : uId as UniqueId,
      name: name == freezed ? _value.name : name as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      picUrl: picUrl == freezed ? _value.picUrl : picUrl as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      lastSignInDateTime: lastSignInDateTime == freezed
          ? _value.lastSignInDateTime
          : lastSignInDateTime as DateTime,
    ));
  }
}

/// @nodoc
class _$_AttendanceUser
    with DiagnosticableTreeMixin
    implements _AttendanceUser {
  const _$_AttendanceUser(
      {@required this.uId,
      @required this.name,
      @required this.emailAddress,
      this.picUrl,
      @required this.phoneNumber,
      @required this.lastSignInDateTime})
      : assert(uId != null),
        assert(name != null),
        assert(emailAddress != null),
        assert(phoneNumber != null),
        assert(lastSignInDateTime != null);

  @override
  final UniqueId uId;
  @override
  final Name name;
  @override
  final EmailAddress emailAddress;
  @override
  final String picUrl;
  @override
  final PhoneNumber phoneNumber;
  @override
  final DateTime lastSignInDateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AttendanceUser(uId: $uId, name: $name, emailAddress: $emailAddress, picUrl: $picUrl, phoneNumber: $phoneNumber, lastSignInDateTime: $lastSignInDateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AttendanceUser'))
      ..add(DiagnosticsProperty('uId', uId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('emailAddress', emailAddress))
      ..add(DiagnosticsProperty('picUrl', picUrl))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('lastSignInDateTime', lastSignInDateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttendanceUser &&
            (identical(other.uId, uId) ||
                const DeepCollectionEquality().equals(other.uId, uId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.picUrl, picUrl) ||
                const DeepCollectionEquality().equals(other.picUrl, picUrl)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.lastSignInDateTime, lastSignInDateTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastSignInDateTime, lastSignInDateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(picUrl) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(lastSignInDateTime);

  @JsonKey(ignore: true)
  @override
  _$AttendanceUserCopyWith<_AttendanceUser> get copyWith =>
      __$AttendanceUserCopyWithImpl<_AttendanceUser>(this, _$identity);
}

abstract class _AttendanceUser implements AttendanceUser {
  const factory _AttendanceUser(
      {@required UniqueId uId,
      @required Name name,
      @required EmailAddress emailAddress,
      String picUrl,
      @required PhoneNumber phoneNumber,
      @required DateTime lastSignInDateTime}) = _$_AttendanceUser;

  @override
  UniqueId get uId;
  @override
  Name get name;
  @override
  EmailAddress get emailAddress;
  @override
  String get picUrl;
  @override
  PhoneNumber get phoneNumber;
  @override
  DateTime get lastSignInDateTime;
  @override
  @JsonKey(ignore: true)
  _$AttendanceUserCopyWith<_AttendanceUser> get copyWith;
}
