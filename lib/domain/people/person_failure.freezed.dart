// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PersonFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonUnknownFailure value) unknown,
    required TResult Function(PersonNotFoundFailure value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonUnknownFailure value)? unknown,
    TResult Function(PersonNotFoundFailure value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonUnknownFailure value)? unknown,
    TResult Function(PersonNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonFailureCopyWith<$Res> {
  factory $PersonFailureCopyWith(
          PersonFailure value, $Res Function(PersonFailure) then) =
      _$PersonFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$PersonFailureCopyWithImpl<$Res>
    implements $PersonFailureCopyWith<$Res> {
  _$PersonFailureCopyWithImpl(this._value, this._then);

  final PersonFailure _value;
  // ignore: unused_field
  final $Res Function(PersonFailure) _then;
}

/// @nodoc
abstract class _$$PersonUnknownFailureCopyWith<$Res> {
  factory _$$PersonUnknownFailureCopyWith(_$PersonUnknownFailure value,
          $Res Function(_$PersonUnknownFailure) then) =
      __$$PersonUnknownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonUnknownFailureCopyWithImpl<$Res>
    extends _$PersonFailureCopyWithImpl<$Res>
    implements _$$PersonUnknownFailureCopyWith<$Res> {
  __$$PersonUnknownFailureCopyWithImpl(_$PersonUnknownFailure _value,
      $Res Function(_$PersonUnknownFailure) _then)
      : super(_value, (v) => _then(v as _$PersonUnknownFailure));

  @override
  _$PersonUnknownFailure get _value => super._value as _$PersonUnknownFailure;
}

/// @nodoc

class _$PersonUnknownFailure implements PersonUnknownFailure {
  const _$PersonUnknownFailure();

  @override
  String toString() {
    return 'PersonFailure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PersonUnknownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonUnknownFailure value) unknown,
    required TResult Function(PersonNotFoundFailure value) notFound,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonUnknownFailure value)? unknown,
    TResult Function(PersonNotFoundFailure value)? notFound,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonUnknownFailure value)? unknown,
    TResult Function(PersonNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class PersonUnknownFailure implements PersonFailure {
  const factory PersonUnknownFailure() = _$PersonUnknownFailure;
}

/// @nodoc
abstract class _$$PersonNotFoundFailureCopyWith<$Res> {
  factory _$$PersonNotFoundFailureCopyWith(_$PersonNotFoundFailure value,
          $Res Function(_$PersonNotFoundFailure) then) =
      __$$PersonNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PersonNotFoundFailureCopyWithImpl<$Res>
    extends _$PersonFailureCopyWithImpl<$Res>
    implements _$$PersonNotFoundFailureCopyWith<$Res> {
  __$$PersonNotFoundFailureCopyWithImpl(_$PersonNotFoundFailure _value,
      $Res Function(_$PersonNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$PersonNotFoundFailure));

  @override
  _$PersonNotFoundFailure get _value => super._value as _$PersonNotFoundFailure;
}

/// @nodoc

class _$PersonNotFoundFailure implements PersonNotFoundFailure {
  const _$PersonNotFoundFailure();

  @override
  String toString() {
    return 'PersonFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PersonNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonUnknownFailure value) unknown,
    required TResult Function(PersonNotFoundFailure value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PersonUnknownFailure value)? unknown,
    TResult Function(PersonNotFoundFailure value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonUnknownFailure value)? unknown,
    TResult Function(PersonNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class PersonNotFoundFailure implements PersonFailure {
  const factory PersonNotFoundFailure() = _$PersonNotFoundFailure;
}
