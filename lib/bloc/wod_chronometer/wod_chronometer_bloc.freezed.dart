// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wod_chronometer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WodChronometerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() reset,
    required TResult Function() finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? paused,
    TResult? Function()? reset,
    TResult? Function()? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? reset,
    TResult Function()? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Finished value) finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Paused value)? paused,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Finished value)? finished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Reset value)? reset,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WodChronometerEventCopyWith<$Res> {
  factory $WodChronometerEventCopyWith(
          WodChronometerEvent value, $Res Function(WodChronometerEvent) then) =
      _$WodChronometerEventCopyWithImpl<$Res, WodChronometerEvent>;
}

/// @nodoc
class _$WodChronometerEventCopyWithImpl<$Res, $Val extends WodChronometerEvent>
    implements $WodChronometerEventCopyWith<$Res> {
  _$WodChronometerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(_$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$WodChronometerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(_$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WodChronometerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() reset,
    required TResult Function() finished,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? paused,
    TResult? Function()? reset,
    TResult? Function()? finished,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? reset,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Finished value) finished,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Paused value)? paused,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Finished value)? finished,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Reset value)? reset,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WodChronometerEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$PausedImplCopyWith<$Res> {
  factory _$$PausedImplCopyWith(_$PausedImpl value, $Res Function(_$PausedImpl) then) =
      __$$PausedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PausedImplCopyWithImpl<$Res> extends _$WodChronometerEventCopyWithImpl<$Res, _$PausedImpl>
    implements _$$PausedImplCopyWith<$Res> {
  __$$PausedImplCopyWithImpl(_$PausedImpl _value, $Res Function(_$PausedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PausedImpl implements _Paused {
  const _$PausedImpl();

  @override
  String toString() {
    return 'WodChronometerEvent.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$PausedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() reset,
    required TResult Function() finished,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? paused,
    TResult? Function()? reset,
    TResult? Function()? finished,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? reset,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Finished value) finished,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Paused value)? paused,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Finished value)? finished,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Reset value)? reset,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused implements WodChronometerEvent {
  const factory _Paused() = _$PausedImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(_$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res> extends _$WodChronometerEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(_$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'WodChronometerEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() reset,
    required TResult Function() finished,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? paused,
    TResult? Function()? reset,
    TResult? Function()? finished,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? reset,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Finished value) finished,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Paused value)? paused,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Finished value)? finished,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Reset value)? reset,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements WodChronometerEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$FinishedImplCopyWith<$Res> {
  factory _$$FinishedImplCopyWith(_$FinishedImpl value, $Res Function(_$FinishedImpl) then) =
      __$$FinishedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FinishedImplCopyWithImpl<$Res>
    extends _$WodChronometerEventCopyWithImpl<$Res, _$FinishedImpl>
    implements _$$FinishedImplCopyWith<$Res> {
  __$$FinishedImplCopyWithImpl(_$FinishedImpl _value, $Res Function(_$FinishedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FinishedImpl implements _Finished {
  const _$FinishedImpl();

  @override
  String toString() {
    return 'WodChronometerEvent.finished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$FinishedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() paused,
    required TResult Function() reset,
    required TResult Function() finished,
  }) {
    return finished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? paused,
    TResult? Function()? reset,
    TResult? Function()? finished,
  }) {
    return finished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? paused,
    TResult Function()? reset,
    TResult Function()? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Reset value) reset,
    required TResult Function(_Finished value) finished,
  }) {
    return finished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Paused value)? paused,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_Finished value)? finished,
  }) {
    return finished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Paused value)? paused,
    TResult Function(_Reset value)? reset,
    TResult Function(_Finished value)? finished,
    required TResult orElse(),
  }) {
    if (finished != null) {
      return finished(this);
    }
    return orElse();
  }
}

abstract class _Finished implements WodChronometerEvent {
  const factory _Finished() = _$FinishedImpl;
}

/// @nodoc
mixin _$WodChronometerState {
  StopWatchTimer get stopWatchTimer => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WodChronometerStateCopyWith<WodChronometerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WodChronometerStateCopyWith<$Res> {
  factory $WodChronometerStateCopyWith(
          WodChronometerState value, $Res Function(WodChronometerState) then) =
      _$WodChronometerStateCopyWithImpl<$Res, WodChronometerState>;
  @useResult
  $Res call({StopWatchTimer stopWatchTimer, bool isRunning, bool isFinished});
}

/// @nodoc
class _$WodChronometerStateCopyWithImpl<$Res, $Val extends WodChronometerState>
    implements $WodChronometerStateCopyWith<$Res> {
  _$WodChronometerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopWatchTimer = null,
    Object? isRunning = null,
    Object? isFinished = null,
  }) {
    return _then(_value.copyWith(
      stopWatchTimer: null == stopWatchTimer
          ? _value.stopWatchTimer
          : stopWatchTimer // ignore: cast_nullable_to_non_nullable
              as StopWatchTimer,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WodChronometerStateImplCopyWith<$Res>
    implements $WodChronometerStateCopyWith<$Res> {
  factory _$$WodChronometerStateImplCopyWith(
          _$WodChronometerStateImpl value, $Res Function(_$WodChronometerStateImpl) then) =
      __$$WodChronometerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StopWatchTimer stopWatchTimer, bool isRunning, bool isFinished});
}

/// @nodoc
class __$$WodChronometerStateImplCopyWithImpl<$Res>
    extends _$WodChronometerStateCopyWithImpl<$Res, _$WodChronometerStateImpl>
    implements _$$WodChronometerStateImplCopyWith<$Res> {
  __$$WodChronometerStateImplCopyWithImpl(
      _$WodChronometerStateImpl _value, $Res Function(_$WodChronometerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stopWatchTimer = null,
    Object? isRunning = null,
    Object? isFinished = null,
  }) {
    return _then(_$WodChronometerStateImpl(
      stopWatchTimer: null == stopWatchTimer
          ? _value.stopWatchTimer
          : stopWatchTimer // ignore: cast_nullable_to_non_nullable
              as StopWatchTimer,
      isRunning: null == isRunning
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: null == isFinished
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WodChronometerStateImpl implements _WodChronometerState {
  const _$WodChronometerStateImpl(
      {required this.stopWatchTimer, this.isRunning = false, this.isFinished = false});

  @override
  final StopWatchTimer stopWatchTimer;
  @override
  @JsonKey()
  final bool isRunning;
  @override
  @JsonKey()
  final bool isFinished;

  @override
  String toString() {
    return 'WodChronometerState(stopWatchTimer: $stopWatchTimer, isRunning: $isRunning, isFinished: $isFinished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WodChronometerStateImpl &&
            (identical(other.stopWatchTimer, stopWatchTimer) ||
                other.stopWatchTimer == stopWatchTimer) &&
            (identical(other.isRunning, isRunning) || other.isRunning == isRunning) &&
            (identical(other.isFinished, isFinished) || other.isFinished == isFinished));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stopWatchTimer, isRunning, isFinished);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WodChronometerStateImplCopyWith<_$WodChronometerStateImpl> get copyWith =>
      __$$WodChronometerStateImplCopyWithImpl<_$WodChronometerStateImpl>(this, _$identity);
}

abstract class _WodChronometerState implements WodChronometerState {
  const factory _WodChronometerState(
      {required final StopWatchTimer stopWatchTimer,
      final bool isRunning,
      final bool isFinished}) = _$WodChronometerStateImpl;

  @override
  StopWatchTimer get stopWatchTimer;
  @override
  bool get isRunning;
  @override
  bool get isFinished;
  @override
  @JsonKey(ignore: true)
  _$$WodChronometerStateImplCopyWith<_$WodChronometerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
