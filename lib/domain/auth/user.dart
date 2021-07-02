import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../core/unique_id.dart';
import '../core/value_objects.dart';
import 'user_role.dart';

part 'user.freezed.dart';

@freezed
abstract class AttendanceUser with _$AttendanceUser {
  const factory AttendanceUser({
    @required UniqueId uId,
    @required Name name,
    @required EmailAddress emailAddress,
    String picUrl,
    @required PhoneNumber phoneNumber,
    @required UserRole role,
    @required DateTime lastSignInDateTime,
    @required bool isApproved,
  }) = _AttendanceUser;
}

extension AttendanceUserX on AttendanceUser {
  Map<String, dynamic> toJson() {
    return {
      "uId": uId.getOrCrash(),
      "name": name.getOrElse(""),
      "emailAddress": emailAddress.getOrElse(""),
      "picUrl": picUrl,
      "phoneNumber": phoneNumber.getOrElse(""),
      "role": role.toValueString(),
      "isApproved": isApproved,
      "lastSignInDateTime": lastSignInDateTime?.millisecondsSinceEpoch ?? 0,
    };
  }

  bool ifUserDetailsIsSame(AttendanceUser user) {
    final isEmailSame =
        user.emailAddress.getOrElse("Na") == emailAddress.getOrElse("Na");
    final isNameSame = user.name.getOrElse("Na") == name.getOrElse("Na");
    final picUrlSame = user.picUrl == picUrl;
    final phoneNumberSame =
        user.phoneNumber.getOrElse("Na") == phoneNumber.getOrElse("Na");
    final isLastLoginTimeSame = user.lastSignInDateTime == lastSignInDateTime;

    return isEmailSame && isNameSame && picUrlSame && phoneNumberSame;
  }
}
