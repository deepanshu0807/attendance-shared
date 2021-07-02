// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceUserDtos _$_$_AttendanceUserDtosFromJson(
    Map<String, dynamic> json) {
  return _$_AttendanceUserDtos(
    id: json['id'] as String,
    email: json['email'] as String,
    name: json['name'] as String,
    phoneNumber: json['phoneNumber'] as String,
    lastSignInTime: json['lastSignInTime'] as int,
    picUrl: json['picUrl'] as String,
  );
}

Map<String, dynamic> _$_$_AttendanceUserDtosToJson(
        _$_AttendanceUserDtos instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'lastSignInTime': instance.lastSignInTime,
      'picUrl': instance.picUrl,
    };
