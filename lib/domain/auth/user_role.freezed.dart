// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_role.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserRoleTearOff {
  const _$UserRoleTearOff();

// ignore: unused_element
  Employee employee() {
    return const Employee();
  }

// ignore: unused_element
  Student student() {
    return const Student();
  }
}

/// @nodoc
// ignore: unused_element
const $UserRole = _$UserRoleTearOff();

/// @nodoc
mixin _$UserRole {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult employee(),
    @required TResult student(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult employee(),
    TResult student(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult employee(Employee value),
    @required TResult student(Student value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult employee(Employee value),
    TResult student(Student value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $UserRoleCopyWith<$Res> {
  factory $UserRoleCopyWith(UserRole value, $Res Function(UserRole) then) =
      _$UserRoleCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserRoleCopyWithImpl<$Res> implements $UserRoleCopyWith<$Res> {
  _$UserRoleCopyWithImpl(this._value, this._then);

  final UserRole _value;
  // ignore: unused_field
  final $Res Function(UserRole) _then;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res> extends _$UserRoleCopyWithImpl<$Res>
    implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(Employee _value, $Res Function(Employee) _then)
      : super(_value, (v) => _then(v as Employee));

  @override
  Employee get _value => super._value as Employee;
}

/// @nodoc
class _$Employee implements Employee {
  const _$Employee();

  @override
  String toString() {
    return 'UserRole.employee()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Employee);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult employee(),
    @required TResult student(),
  }) {
    assert(employee != null);
    assert(student != null);
    return employee();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult employee(),
    TResult student(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (employee != null) {
      return employee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult employee(Employee value),
    @required TResult student(Student value),
  }) {
    assert(employee != null);
    assert(student != null);
    return employee(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult employee(Employee value),
    TResult student(Student value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (employee != null) {
      return employee(this);
    }
    return orElse();
  }
}

abstract class Employee implements UserRole {
  const factory Employee() = _$Employee;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res>;
}

/// @nodoc
class _$StudentCopyWithImpl<$Res> extends _$UserRoleCopyWithImpl<$Res>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(Student _value, $Res Function(Student) _then)
      : super(_value, (v) => _then(v as Student));

  @override
  Student get _value => super._value as Student;
}

/// @nodoc
class _$Student implements Student {
  const _$Student();

  @override
  String toString() {
    return 'UserRole.student()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Student);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult employee(),
    @required TResult student(),
  }) {
    assert(employee != null);
    assert(student != null);
    return student();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult employee(),
    TResult student(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (student != null) {
      return student();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult employee(Employee value),
    @required TResult student(Student value),
  }) {
    assert(employee != null);
    assert(student != null);
    return student(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult employee(Employee value),
    TResult student(Student value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (student != null) {
      return student(this);
    }
    return orElse();
  }
}

abstract class Student implements UserRole {
  const factory Student() = _$Student;
}
