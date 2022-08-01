// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'series_watcher_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeriesWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)
        loaded,
    required TResult Function(SerieFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesWatcherInitial value) initial,
    required TResult Function(_SeriesWatcherLoading value) loading,
    required TResult Function(_SeriesWatcherLoaded value) loaded,
    required TResult Function(_SeriesWatcherFailed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesWatcherStateCopyWith<$Res> {
  factory $SeriesWatcherStateCopyWith(
          SeriesWatcherState value, $Res Function(SeriesWatcherState) then) =
      _$SeriesWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeriesWatcherStateCopyWithImpl<$Res>
    implements $SeriesWatcherStateCopyWith<$Res> {
  _$SeriesWatcherStateCopyWithImpl(this._value, this._then);

  final SeriesWatcherState _value;
  // ignore: unused_field
  final $Res Function(SeriesWatcherState) _then;
}

/// @nodoc
abstract class _$$_SeriesWatcherInitialCopyWith<$Res> {
  factory _$$_SeriesWatcherInitialCopyWith(_$_SeriesWatcherInitial value,
          $Res Function(_$_SeriesWatcherInitial) then) =
      __$$_SeriesWatcherInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeriesWatcherInitialCopyWithImpl<$Res>
    extends _$SeriesWatcherStateCopyWithImpl<$Res>
    implements _$$_SeriesWatcherInitialCopyWith<$Res> {
  __$$_SeriesWatcherInitialCopyWithImpl(_$_SeriesWatcherInitial _value,
      $Res Function(_$_SeriesWatcherInitial) _then)
      : super(_value, (v) => _then(v as _$_SeriesWatcherInitial));

  @override
  _$_SeriesWatcherInitial get _value => super._value as _$_SeriesWatcherInitial;
}

/// @nodoc

class _$_SeriesWatcherInitial implements _SeriesWatcherInitial {
  const _$_SeriesWatcherInitial();

  @override
  String toString() {
    return 'SeriesWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SeriesWatcherInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)
        loaded,
    required TResult Function(SerieFailure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesWatcherInitial value) initial,
    required TResult Function(_SeriesWatcherLoading value) loading,
    required TResult Function(_SeriesWatcherLoaded value) loaded,
    required TResult Function(_SeriesWatcherFailed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SeriesWatcherInitial implements SeriesWatcherState {
  const factory _SeriesWatcherInitial() = _$_SeriesWatcherInitial;
}

/// @nodoc
abstract class _$$_SeriesWatcherLoadingCopyWith<$Res> {
  factory _$$_SeriesWatcherLoadingCopyWith(_$_SeriesWatcherLoading value,
          $Res Function(_$_SeriesWatcherLoading) then) =
      __$$_SeriesWatcherLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SeriesWatcherLoadingCopyWithImpl<$Res>
    extends _$SeriesWatcherStateCopyWithImpl<$Res>
    implements _$$_SeriesWatcherLoadingCopyWith<$Res> {
  __$$_SeriesWatcherLoadingCopyWithImpl(_$_SeriesWatcherLoading _value,
      $Res Function(_$_SeriesWatcherLoading) _then)
      : super(_value, (v) => _then(v as _$_SeriesWatcherLoading));

  @override
  _$_SeriesWatcherLoading get _value => super._value as _$_SeriesWatcherLoading;
}

/// @nodoc

class _$_SeriesWatcherLoading implements _SeriesWatcherLoading {
  const _$_SeriesWatcherLoading();

  @override
  String toString() {
    return 'SeriesWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SeriesWatcherLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)
        loaded,
    required TResult Function(SerieFailure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesWatcherInitial value) initial,
    required TResult Function(_SeriesWatcherLoading value) loading,
    required TResult Function(_SeriesWatcherLoaded value) loaded,
    required TResult Function(_SeriesWatcherFailed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SeriesWatcherLoading implements SeriesWatcherState {
  const factory _SeriesWatcherLoading() = _$_SeriesWatcherLoading;
}

/// @nodoc
abstract class _$$_SeriesWatcherLoadedCopyWith<$Res> {
  factory _$$_SeriesWatcherLoadedCopyWith(_$_SeriesWatcherLoaded value,
          $Res Function(_$_SeriesWatcherLoaded) then) =
      __$$_SeriesWatcherLoadedCopyWithImpl<$Res>;
  $Res call({List<SerieModel> series, bool isLoadingMore, bool noMoreItems});
}

/// @nodoc
class __$$_SeriesWatcherLoadedCopyWithImpl<$Res>
    extends _$SeriesWatcherStateCopyWithImpl<$Res>
    implements _$$_SeriesWatcherLoadedCopyWith<$Res> {
  __$$_SeriesWatcherLoadedCopyWithImpl(_$_SeriesWatcherLoaded _value,
      $Res Function(_$_SeriesWatcherLoaded) _then)
      : super(_value, (v) => _then(v as _$_SeriesWatcherLoaded));

  @override
  _$_SeriesWatcherLoaded get _value => super._value as _$_SeriesWatcherLoaded;

  @override
  $Res call({
    Object? series = freezed,
    Object? isLoadingMore = freezed,
    Object? noMoreItems = freezed,
  }) {
    return _then(_$_SeriesWatcherLoaded(
      series == freezed
          ? _value._series
          : series // ignore: cast_nullable_to_non_nullable
              as List<SerieModel>,
      isLoadingMore == freezed
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      noMoreItems == freezed
          ? _value.noMoreItems
          : noMoreItems // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SeriesWatcherLoaded implements _SeriesWatcherLoaded {
  const _$_SeriesWatcherLoaded(
      final List<SerieModel> series, this.isLoadingMore, this.noMoreItems)
      : _series = series;

  final List<SerieModel> _series;
  @override
  List<SerieModel> get series {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_series);
  }

  @override
  final bool isLoadingMore;
  @override
  final bool noMoreItems;

  @override
  String toString() {
    return 'SeriesWatcherState.loaded(series: $series, isLoadingMore: $isLoadingMore, noMoreItems: $noMoreItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesWatcherLoaded &&
            const DeepCollectionEquality().equals(other._series, _series) &&
            const DeepCollectionEquality()
                .equals(other.isLoadingMore, isLoadingMore) &&
            const DeepCollectionEquality()
                .equals(other.noMoreItems, noMoreItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_series),
      const DeepCollectionEquality().hash(isLoadingMore),
      const DeepCollectionEquality().hash(noMoreItems));

  @JsonKey(ignore: true)
  @override
  _$$_SeriesWatcherLoadedCopyWith<_$_SeriesWatcherLoaded> get copyWith =>
      __$$_SeriesWatcherLoadedCopyWithImpl<_$_SeriesWatcherLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)
        loaded,
    required TResult Function(SerieFailure failure) failed,
  }) {
    return loaded(series, isLoadingMore, noMoreItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
  }) {
    return loaded?.call(series, isLoadingMore, noMoreItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(series, isLoadingMore, noMoreItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesWatcherInitial value) initial,
    required TResult Function(_SeriesWatcherLoading value) loading,
    required TResult Function(_SeriesWatcherLoaded value) loaded,
    required TResult Function(_SeriesWatcherFailed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SeriesWatcherLoaded implements SeriesWatcherState {
  const factory _SeriesWatcherLoaded(
      final List<SerieModel> series,
      final bool isLoadingMore,
      final bool noMoreItems) = _$_SeriesWatcherLoaded;

  List<SerieModel> get series;
  bool get isLoadingMore;
  bool get noMoreItems;
  @JsonKey(ignore: true)
  _$$_SeriesWatcherLoadedCopyWith<_$_SeriesWatcherLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SeriesWatcherFailedCopyWith<$Res> {
  factory _$$_SeriesWatcherFailedCopyWith(_$_SeriesWatcherFailed value,
          $Res Function(_$_SeriesWatcherFailed) then) =
      __$$_SeriesWatcherFailedCopyWithImpl<$Res>;
  $Res call({SerieFailure failure});

  $SerieFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_SeriesWatcherFailedCopyWithImpl<$Res>
    extends _$SeriesWatcherStateCopyWithImpl<$Res>
    implements _$$_SeriesWatcherFailedCopyWith<$Res> {
  __$$_SeriesWatcherFailedCopyWithImpl(_$_SeriesWatcherFailed _value,
      $Res Function(_$_SeriesWatcherFailed) _then)
      : super(_value, (v) => _then(v as _$_SeriesWatcherFailed));

  @override
  _$_SeriesWatcherFailed get _value => super._value as _$_SeriesWatcherFailed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_SeriesWatcherFailed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SerieFailure,
    ));
  }

  @override
  $SerieFailureCopyWith<$Res> get failure {
    return $SerieFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_SeriesWatcherFailed implements _SeriesWatcherFailed {
  const _$_SeriesWatcherFailed(this.failure);

  @override
  final SerieFailure failure;

  @override
  String toString() {
    return 'SeriesWatcherState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeriesWatcherFailed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_SeriesWatcherFailedCopyWith<_$_SeriesWatcherFailed> get copyWith =>
      __$$_SeriesWatcherFailedCopyWithImpl<_$_SeriesWatcherFailed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)
        loaded,
    required TResult Function(SerieFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<SerieModel> series, bool isLoadingMore, bool noMoreItems)?
        loaded,
    TResult Function(SerieFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SeriesWatcherInitial value) initial,
    required TResult Function(_SeriesWatcherLoading value) loading,
    required TResult Function(_SeriesWatcherLoaded value) loaded,
    required TResult Function(_SeriesWatcherFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SeriesWatcherInitial value)? initial,
    TResult Function(_SeriesWatcherLoading value)? loading,
    TResult Function(_SeriesWatcherLoaded value)? loaded,
    TResult Function(_SeriesWatcherFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _SeriesWatcherFailed implements SeriesWatcherState {
  const factory _SeriesWatcherFailed(final SerieFailure failure) =
      _$_SeriesWatcherFailed;

  SerieFailure get failure;
  @JsonKey(ignore: true)
  _$$_SeriesWatcherFailedCopyWith<_$_SeriesWatcherFailed> get copyWith =>
      throw _privateConstructorUsedError;
}
