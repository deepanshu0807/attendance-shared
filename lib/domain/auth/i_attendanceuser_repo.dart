import 'package:dartz/dartz.dart';
import 'package:attendance_shared/attendance_shared.dart';

abstract class IAttendanceUserRepo {
  Stream<Either<InfraFailure, AttendanceUser>> getUser(AttendanceUser user);
  Future<Either<InfraFailure, Unit>> create(AttendanceUser user);
}
