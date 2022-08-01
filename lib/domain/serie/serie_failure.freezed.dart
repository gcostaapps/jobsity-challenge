// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'serie_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SerieFailure {
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
    required TResult Function(SerieUnknownFailure value) unknown,
    required TResult Function(SerieNotFoundFailure value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SerieUnknownFailure value)? unknown,
    TResult Function(SerieNotFoundFailure value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerieUnknownFailure value)? unknown,
    TResult Function(SerieNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SerieFailureCopyWith<$Res> {
  factory $SerieFailureCopyWith(
          SerieFailure value, $Res Function(SerieFailure) then) =
      _$SerieFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$SerieFailureCopyWithImpl<$Res> implements $SerieFailureCopyWith<$Res> {
  _$SerieFailureCopyWithImpl(this._value, this._then);

  final SerieFailure _value;
  // ignore: unused_field
  final $Res Function(SerieFailure) _then;
}

/// @nodoc
abstract class _$$SerieUnknownFailureCopyWith<$Res> {
  factory _$$SerieUnknownFailureCopyWith(_$SerieUnknownFailure value,
          $Res Function(_$SerieUnknownFailure) then) =
      __$$SerieUnknownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SerieUnknownFailureCopyWithImpl<$Res>
    extends _$SerieFailureCopyWithImpl<$Res>
    implements _$$SerieUnknownFailureCopyWith<$Res> {
  __$$SerieUnknownFailureCopyWithImpl(
      _$SerieUnknownFailure _value, $Res Function(_$SerieUnknownFailure) _then)
      : super(_value, (v) => _then(v as _$SerieUnknownFailure));

  @override
  _$SerieUnknownFailure get _value => super._value as _$SerieUnknownFailure;
}

/// @nodoc

class _$SerieUnknownFailure implements SerieUnknownFailure {
  const _$SerieUnknownFailure();

  @override
  String toString() {
    return 'SerieFailure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SerieUnknownFailure);
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
    required TResult Function(SerieUnknownFailure value) unknown,
    required TResult Function(SerieNotFoundFailure value) notFound,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SerieUnknownFailure value)? unknown,
    TResult Function(SerieNotFoundFailure value)? notFound,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerieUnknownFailure value)? unknown,
    TResult Function(SerieNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class SerieUnknownFailure implements SerieFailure {
  const factory SerieUnknownFailure() = _$SerieUnknownFailure;
}

/// @nodoc
abstract class _$$SerieNotFoundFailureCopyWith<$Res> {
  factory _$$SerieNotFoundFailureCopyWith(_$SerieNotFoundFailure value,
          $Res Function(_$SerieNotFoundFailure) then) =
      __$$SerieNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SerieNotFoundFailureCopyWithImpl<$Res>
    extends _$SerieFailureCopyWithImpl<$Res>
    implements _$$SerieNotFoundFailureCopyWith<$Res> {
  __$$SerieNotFoundFailureCopyWithImpl(_$SerieNotFoundFailure _value,
      $Res Function(_$SerieNotFoundFailure) _then)
      : super(_value, (v) => _then(v as _$SerieNotFoundFailure));

  @override
  _$SerieNotFoundFailure get _value => super._value as _$SerieNotFoundFailure;
}

/// @nodoc

class _$SerieNotFoundFailure implements SerieNotFoundFailure {
  const _$SerieNotFoundFailure();

  @override
  String toString() {
    return 'SerieFailure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SerieNotFoundFailure);
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
    required TResult Function(SerieUnknownFailure value) unknown,
    required TResult Function(SerieNotFoundFailure value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SerieUnknownFailure value)? unknown,
    TResult Function(SerieNotFoundFailure value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SerieUnknownFailure value)? unknown,
    TResult Function(SerieNotFoundFailure value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class SerieNotFoundFailure implements SerieFailure {
  const factory SerieNotFoundFailure() = _$SerieNotFoundFailure;
}
