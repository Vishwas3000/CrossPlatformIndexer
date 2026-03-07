// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IndexStatus {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IndexStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'IndexStatus()';
  }
}

/// @nodoc
class $IndexStatusCopyWith<$Res> {
  $IndexStatusCopyWith(IndexStatus _, $Res Function(IndexStatus) __);
}

/// Adds pattern-matching-related methods to [IndexStatus].
extension IndexStatusPatterns on IndexStatus {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IndexStatus_Pending value)? pending,
    TResult Function(IndexStatus_Processing value)? processing,
    TResult Function(IndexStatus_Complete value)? complete,
    TResult Function(IndexStatus_Failed value)? failed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case IndexStatus_Pending() when pending != null:
        return pending(_that);
      case IndexStatus_Processing() when processing != null:
        return processing(_that);
      case IndexStatus_Complete() when complete != null:
        return complete(_that);
      case IndexStatus_Failed() when failed != null:
        return failed(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IndexStatus_Pending value) pending,
    required TResult Function(IndexStatus_Processing value) processing,
    required TResult Function(IndexStatus_Complete value) complete,
    required TResult Function(IndexStatus_Failed value) failed,
  }) {
    final _that = this;
    switch (_that) {
      case IndexStatus_Pending():
        return pending(_that);
      case IndexStatus_Processing():
        return processing(_that);
      case IndexStatus_Complete():
        return complete(_that);
      case IndexStatus_Failed():
        return failed(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IndexStatus_Pending value)? pending,
    TResult? Function(IndexStatus_Processing value)? processing,
    TResult? Function(IndexStatus_Complete value)? complete,
    TResult? Function(IndexStatus_Failed value)? failed,
  }) {
    final _that = this;
    switch (_that) {
      case IndexStatus_Pending() when pending != null:
        return pending(_that);
      case IndexStatus_Processing() when processing != null:
        return processing(_that);
      case IndexStatus_Complete() when complete != null:
        return complete(_that);
      case IndexStatus_Failed() when failed != null:
        return failed(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(double progress)? processing,
    TResult Function(int chunkCount)? complete,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case IndexStatus_Pending() when pending != null:
        return pending();
      case IndexStatus_Processing() when processing != null:
        return processing(_that.progress);
      case IndexStatus_Complete() when complete != null:
        return complete(_that.chunkCount);
      case IndexStatus_Failed() when failed != null:
        return failed(_that.error);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(double progress) processing,
    required TResult Function(int chunkCount) complete,
    required TResult Function(String error) failed,
  }) {
    final _that = this;
    switch (_that) {
      case IndexStatus_Pending():
        return pending();
      case IndexStatus_Processing():
        return processing(_that.progress);
      case IndexStatus_Complete():
        return complete(_that.chunkCount);
      case IndexStatus_Failed():
        return failed(_that.error);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(double progress)? processing,
    TResult? Function(int chunkCount)? complete,
    TResult? Function(String error)? failed,
  }) {
    final _that = this;
    switch (_that) {
      case IndexStatus_Pending() when pending != null:
        return pending();
      case IndexStatus_Processing() when processing != null:
        return processing(_that.progress);
      case IndexStatus_Complete() when complete != null:
        return complete(_that.chunkCount);
      case IndexStatus_Failed() when failed != null:
        return failed(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class IndexStatus_Pending extends IndexStatus {
  const IndexStatus_Pending() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is IndexStatus_Pending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'IndexStatus.pending()';
  }
}

/// @nodoc

class IndexStatus_Processing extends IndexStatus {
  const IndexStatus_Processing({required this.progress}) : super._();

  final double progress;

  /// Create a copy of IndexStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IndexStatus_ProcessingCopyWith<IndexStatus_Processing> get copyWith =>
      _$IndexStatus_ProcessingCopyWithImpl<IndexStatus_Processing>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IndexStatus_Processing &&
            (identical(other.progress, progress) ||
                other.progress == progress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progress);

  @override
  String toString() {
    return 'IndexStatus.processing(progress: $progress)';
  }
}

/// @nodoc
abstract mixin class $IndexStatus_ProcessingCopyWith<$Res>
    implements $IndexStatusCopyWith<$Res> {
  factory $IndexStatus_ProcessingCopyWith(IndexStatus_Processing value,
          $Res Function(IndexStatus_Processing) _then) =
      _$IndexStatus_ProcessingCopyWithImpl;
  @useResult
  $Res call({double progress});
}

/// @nodoc
class _$IndexStatus_ProcessingCopyWithImpl<$Res>
    implements $IndexStatus_ProcessingCopyWith<$Res> {
  _$IndexStatus_ProcessingCopyWithImpl(this._self, this._then);

  final IndexStatus_Processing _self;
  final $Res Function(IndexStatus_Processing) _then;

  /// Create a copy of IndexStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? progress = null,
  }) {
    return _then(IndexStatus_Processing(
      progress: null == progress
          ? _self.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class IndexStatus_Complete extends IndexStatus {
  const IndexStatus_Complete({required this.chunkCount}) : super._();

  final int chunkCount;

  /// Create a copy of IndexStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IndexStatus_CompleteCopyWith<IndexStatus_Complete> get copyWith =>
      _$IndexStatus_CompleteCopyWithImpl<IndexStatus_Complete>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IndexStatus_Complete &&
            (identical(other.chunkCount, chunkCount) ||
                other.chunkCount == chunkCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chunkCount);

  @override
  String toString() {
    return 'IndexStatus.complete(chunkCount: $chunkCount)';
  }
}

/// @nodoc
abstract mixin class $IndexStatus_CompleteCopyWith<$Res>
    implements $IndexStatusCopyWith<$Res> {
  factory $IndexStatus_CompleteCopyWith(IndexStatus_Complete value,
          $Res Function(IndexStatus_Complete) _then) =
      _$IndexStatus_CompleteCopyWithImpl;
  @useResult
  $Res call({int chunkCount});
}

/// @nodoc
class _$IndexStatus_CompleteCopyWithImpl<$Res>
    implements $IndexStatus_CompleteCopyWith<$Res> {
  _$IndexStatus_CompleteCopyWithImpl(this._self, this._then);

  final IndexStatus_Complete _self;
  final $Res Function(IndexStatus_Complete) _then;

  /// Create a copy of IndexStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? chunkCount = null,
  }) {
    return _then(IndexStatus_Complete(
      chunkCount: null == chunkCount
          ? _self.chunkCount
          : chunkCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class IndexStatus_Failed extends IndexStatus {
  const IndexStatus_Failed({required this.error}) : super._();

  final String error;

  /// Create a copy of IndexStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IndexStatus_FailedCopyWith<IndexStatus_Failed> get copyWith =>
      _$IndexStatus_FailedCopyWithImpl<IndexStatus_Failed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IndexStatus_Failed &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'IndexStatus.failed(error: $error)';
  }
}

/// @nodoc
abstract mixin class $IndexStatus_FailedCopyWith<$Res>
    implements $IndexStatusCopyWith<$Res> {
  factory $IndexStatus_FailedCopyWith(
          IndexStatus_Failed value, $Res Function(IndexStatus_Failed) _then) =
      _$IndexStatus_FailedCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$IndexStatus_FailedCopyWithImpl<$Res>
    implements $IndexStatus_FailedCopyWith<$Res> {
  _$IndexStatus_FailedCopyWithImpl(this._self, this._then);

  final IndexStatus_Failed _self;
  final $Res Function(IndexStatus_Failed) _then;

  /// Create a copy of IndexStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(IndexStatus_Failed(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
