// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'upload_results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UploadResultTearOff {
  const _$UploadResultTearOff();

// ignore: unused_element
  _UploadResult call({@required String name, @required String picUrl}) {
    return _UploadResult(
      name: name,
      picUrl: picUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UploadResult = _$UploadResultTearOff();

/// @nodoc
mixin _$UploadResult {
  String get name;
  String get picUrl;

  @JsonKey(ignore: true)
  $UploadResultCopyWith<UploadResult> get copyWith;
}

/// @nodoc
abstract class $UploadResultCopyWith<$Res> {
  factory $UploadResultCopyWith(
          UploadResult value, $Res Function(UploadResult) then) =
      _$UploadResultCopyWithImpl<$Res>;
  $Res call({String name, String picUrl});
}

/// @nodoc
class _$UploadResultCopyWithImpl<$Res> implements $UploadResultCopyWith<$Res> {
  _$UploadResultCopyWithImpl(this._value, this._then);

  final UploadResult _value;
  // ignore: unused_field
  final $Res Function(UploadResult) _then;

  @override
  $Res call({
    Object name = freezed,
    Object picUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      picUrl: picUrl == freezed ? _value.picUrl : picUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$UploadResultCopyWith<$Res>
    implements $UploadResultCopyWith<$Res> {
  factory _$UploadResultCopyWith(
          _UploadResult value, $Res Function(_UploadResult) then) =
      __$UploadResultCopyWithImpl<$Res>;
  @override
  $Res call({String name, String picUrl});
}

/// @nodoc
class __$UploadResultCopyWithImpl<$Res> extends _$UploadResultCopyWithImpl<$Res>
    implements _$UploadResultCopyWith<$Res> {
  __$UploadResultCopyWithImpl(
      _UploadResult _value, $Res Function(_UploadResult) _then)
      : super(_value, (v) => _then(v as _UploadResult));

  @override
  _UploadResult get _value => super._value as _UploadResult;

  @override
  $Res call({
    Object name = freezed,
    Object picUrl = freezed,
  }) {
    return _then(_UploadResult(
      name: name == freezed ? _value.name : name as String,
      picUrl: picUrl == freezed ? _value.picUrl : picUrl as String,
    ));
  }
}

/// @nodoc
class _$_UploadResult implements _UploadResult {
  const _$_UploadResult({@required this.name, @required this.picUrl})
      : assert(name != null),
        assert(picUrl != null);

  @override
  final String name;
  @override
  final String picUrl;

  @override
  String toString() {
    return 'UploadResult(name: $name, picUrl: $picUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadResult &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picUrl, picUrl) ||
                const DeepCollectionEquality().equals(other.picUrl, picUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picUrl);

  @JsonKey(ignore: true)
  @override
  _$UploadResultCopyWith<_UploadResult> get copyWith =>
      __$UploadResultCopyWithImpl<_UploadResult>(this, _$identity);
}

abstract class _UploadResult implements UploadResult {
  const factory _UploadResult(
      {@required String name, @required String picUrl}) = _$_UploadResult;

  @override
  String get name;
  @override
  String get picUrl;
  @override
  @JsonKey(ignore: true)
  _$UploadResultCopyWith<_UploadResult> get copyWith;
}
