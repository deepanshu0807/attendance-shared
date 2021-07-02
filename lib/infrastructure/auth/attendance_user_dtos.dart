import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../attendance_shared.dart';

part 'attendance_user_dtos.freezed.dart';
part 'attendance_user_dtos.g.dart';

@freezed
abstract class AttendanceUserDtos with _$AttendanceUserDtos {
  factory AttendanceUserDtos(
      {@required String id,
      @required String email,
      @required String name,
      @required String phoneNumber,
      @required int lastSignInTime,
      String picUrl}) = _AttendanceUserDtos;

  factory AttendanceUserDtos.fromDomain(AttendanceUser user) {
    return AttendanceUserDtos(
      id: user.uId.getOrCrash(),
      email: user.emailAddress.getOrElse("NA"),
      phoneNumber: user.phoneNumber.getOrElse(""),
      lastSignInTime: user.lastSignInDateTime.millisecondsSinceEpoch,
      name: user.name.getOrCrash(),
      picUrl: user.picUrl,
    );
  }

  factory AttendanceUserDtos.fromJson(Map<String, dynamic> json) =>
      _$AttendanceUserDtosFromJson(json);
}

class AttendanceUserDtosConverter
    implements JsonConverter<AttendanceUserDtos, Map<String, dynamic>> {
  const AttendanceUserDtosConverter();

  @override
  AttendanceUserDtos fromJson(Map<String, dynamic> json) {
    return AttendanceUserDtos.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(AttendanceUserDtos fieldValue) =>
      fieldValue.toJson();
}

extension AttendanceUserDtosX on AttendanceUserDtos {
  AttendanceUser toDomain() {
    return AttendanceUser(
      uId: UniqueId.fromUniqueString(this.id ?? ""),
      emailAddress: EmailAddress(email),
      phoneNumber: PhoneNumber(phoneNumber),
      lastSignInDateTime:
          DateTime.fromMillisecondsSinceEpoch(lastSignInTime ?? 0),
      name: Name(name),
      picUrl: picUrl,
    );
  }
}
