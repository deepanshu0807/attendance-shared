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
    role: json['role'] as String,
    lastSignInTime: json['lastSignInTime'] as int,
    isApproved: json['isApproved'] as bool,
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
      'role': instance.role,
      'lastSignInTime': instance.lastSignInTime,
      'isApproved': instance.isApproved,
      'picUrl': instance.picUrl,
    };
