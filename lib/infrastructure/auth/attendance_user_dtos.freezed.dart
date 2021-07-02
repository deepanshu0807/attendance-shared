// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'attendance_user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AttendanceUserDtos _$AttendanceUserDtosFromJson(Map<String, dynamic> json) {
  return _AttendanceUserDtos.fromJson(json);
}

/// @nodoc
class _$AttendanceUserDtosTearOff {
  const _$AttendanceUserDtosTearOff();

// ignore: unused_element
  _AttendanceUserDtos call(
      {@required String id,
      @required String email,
      @required String name,
      @required String phoneNumber,
      @required int lastSignInTime,
      String picUrl}) {
    return _AttendanceUserDtos(
      id: id,
      email: email,
      name: name,
      phoneNumber: phoneNumber,
      lastSignInTime: lastSignInTime,
      picUrl: picUrl,
    );
  }

// ignore: unused_element
  AttendanceUserDtos fromJson(Map<String, Object> json) {
    return AttendanceUserDtos.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AttendanceUserDtos = _$AttendanceUserDtosTearOff();

/// @nodoc
mixin _$AttendanceUserDtos {
  String get id;
  String get email;
  String get name;
  String get phoneNumber;
  int get lastSignInTime;
  String get picUrl;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $AttendanceUserDtosCopyWith<AttendanceUserDtos> get copyWith;
}

/// @nodoc
abstract class $AttendanceUserDtosCopyWith<$Res> {
  factory $AttendanceUserDtosCopyWith(
          AttendanceUserDtos value, $Res Function(AttendanceUserDtos) then) =
      _$AttendanceUserDtosCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String name,
      String phoneNumber,
      int lastSignInTime,
      String picUrl});
}

/// @nodoc
class _$AttendanceUserDtosCopyWithImpl<$Res>
    implements $AttendanceUserDtosCopyWith<$Res> {
  _$AttendanceUserDtosCopyWithImpl(this._value, this._then);

  final AttendanceUserDtos _value;
  // ignore: unused_field
  final $Res Function(AttendanceUserDtos) _then;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object phoneNumber = freezed,
    Object lastSignInTime = freezed,
    Object picUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      lastSignInTime: lastSignInTime == freezed
          ? _value.lastSignInTime
          : lastSignInTime as int,
      picUrl: picUrl == freezed ? _value.picUrl : picUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$AttendanceUserDtosCopyWith<$Res>
    implements $AttendanceUserDtosCopyWith<$Res> {
  factory _$AttendanceUserDtosCopyWith(
          _AttendanceUserDtos value, $Res Function(_AttendanceUserDtos) then) =
      __$AttendanceUserDtosCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String name,
      String phoneNumber,
      int lastSignInTime,
      String picUrl});
}

/// @nodoc
class __$AttendanceUserDtosCopyWithImpl<$Res>
    extends _$AttendanceUserDtosCopyWithImpl<$Res>
    implements _$AttendanceUserDtosCopyWith<$Res> {
  __$AttendanceUserDtosCopyWithImpl(
      _AttendanceUserDtos _value, $Res Function(_AttendanceUserDtos) _then)
      : super(_value, (v) => _then(v as _AttendanceUserDtos));

  @override
  _AttendanceUserDtos get _value => super._value as _AttendanceUserDtos;

  @override
  $Res call({
    Object id = freezed,
    Object email = freezed,
    Object name = freezed,
    Object phoneNumber = freezed,
    Object lastSignInTime = freezed,
    Object picUrl = freezed,
  }) {
    return _then(_AttendanceUserDtos(
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      name: name == freezed ? _value.name : name as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      lastSignInTime: lastSignInTime == freezed
          ? _value.lastSignInTime
          : lastSignInTime as int,
      picUrl: picUrl == freezed ? _value.picUrl : picUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AttendanceUserDtos
    with DiagnosticableTreeMixin
    implements _AttendanceUserDtos {
  _$_AttendanceUserDtos(
      {@required this.id,
      @required this.email,
      @required this.name,
      @required this.phoneNumber,
      @required this.lastSignInTime,
      this.picUrl})
      : assert(id != null),
        assert(email != null),
        assert(name != null),
        assert(phoneNumber != null),
        assert(lastSignInTime != null);

  factory _$_AttendanceUserDtos.fromJson(Map<String, dynamic> json) =>
      _$_$_AttendanceUserDtosFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final int lastSignInTime;
  @override
  final String picUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AttendanceUserDtos(id: $id, email: $email, name: $name, phoneNumber: $phoneNumber, lastSignInTime: $lastSignInTime, picUrl: $picUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AttendanceUserDtos'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('lastSignInTime', lastSignInTime))
      ..add(DiagnosticsProperty('picUrl', picUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttendanceUserDtos &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.lastSignInTime, lastSignInTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastSignInTime, lastSignInTime)) &&
            (identical(other.picUrl, picUrl) ||
                const DeepCollectionEquality().equals(other.picUrl, picUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(lastSignInTime) ^
      const DeepCollectionEquality().hash(picUrl);

  @JsonKey(ignore: true)
  @override
  _$AttendanceUserDtosCopyWith<_AttendanceUserDtos> get copyWith =>
      __$AttendanceUserDtosCopyWithImpl<_AttendanceUserDtos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AttendanceUserDtosToJson(this);
  }
}

abstract class _AttendanceUserDtos implements AttendanceUserDtos {
  factory _AttendanceUserDtos(
      {@required String id,
      @required String email,
      @required String name,
      @required String phoneNumber,
      @required int lastSignInTime,
      String picUrl}) = _$_AttendanceUserDtos;

  factory _AttendanceUserDtos.fromJson(Map<String, dynamic> json) =
      _$_AttendanceUserDtos.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  int get lastSignInTime;
  @override
  String get picUrl;
  @override
  @JsonKey(ignore: true)
  _$AttendanceUserDtosCopyWith<_AttendanceUserDtos> get copyWith;
}
