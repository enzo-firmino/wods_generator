// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wods_generator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WodsGeneratorEvent {
  String? get prompt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? prompt) generate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? prompt)? generate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? prompt)? generate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generate value) generate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Generate value)? generate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WodsGeneratorEventCopyWith<WodsGeneratorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WodsGeneratorEventCopyWith<$Res> {
  factory $WodsGeneratorEventCopyWith(
          WodsGeneratorEvent value, $Res Function(WodsGeneratorEvent) then) =
      _$WodsGeneratorEventCopyWithImpl<$Res, WodsGeneratorEvent>;
  @useResult
  $Res call({String? prompt});
}

/// @nodoc
class _$WodsGeneratorEventCopyWithImpl<$Res, $Val extends WodsGeneratorEvent>
    implements $WodsGeneratorEventCopyWith<$Res> {
  _$WodsGeneratorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = freezed,
  }) {
    return _then(_value.copyWith(
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateImplCopyWith<$Res>
    implements $WodsGeneratorEventCopyWith<$Res> {
  factory _$$GenerateImplCopyWith(
          _$GenerateImpl value, $Res Function(_$GenerateImpl) then) =
      __$$GenerateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? prompt});
}

/// @nodoc
class __$$GenerateImplCopyWithImpl<$Res>
    extends _$WodsGeneratorEventCopyWithImpl<$Res, _$GenerateImpl>
    implements _$$GenerateImplCopyWith<$Res> {
  __$$GenerateImplCopyWithImpl(
      _$GenerateImpl _value, $Res Function(_$GenerateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = freezed,
  }) {
    return _then(_$GenerateImpl(
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GenerateImpl implements _Generate {
  const _$GenerateImpl({this.prompt});

  @override
  final String? prompt;

  @override
  String toString() {
    return 'WodsGeneratorEvent.generate(prompt: $prompt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, prompt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateImplCopyWith<_$GenerateImpl> get copyWith =>
      __$$GenerateImplCopyWithImpl<_$GenerateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? prompt) generate,
  }) {
    return generate(prompt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? prompt)? generate,
  }) {
    return generate?.call(prompt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? prompt)? generate,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(prompt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generate value) generate,
  }) {
    return generate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Generate value)? generate,
  }) {
    return generate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generate value)? generate,
    required TResult orElse(),
  }) {
    if (generate != null) {
      return generate(this);
    }
    return orElse();
  }
}

abstract class _Generate implements WodsGeneratorEvent {
  const factory _Generate({final String? prompt}) = _$GenerateImpl;

  @override
  String? get prompt;
  @override
  @JsonKey(ignore: true)
  _$$GenerateImplCopyWith<_$GenerateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WodsGeneratorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? prompt, List<Wod> wods) success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? prompt, List<Wod> wods)? success,
    TResult? Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? prompt, List<Wod> wods)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WodGeneratorInitial value) initial,
    required TResult Function(WodGeneratorLoading value) loading,
    required TResult Function(WodGeneratorSuccess value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WodGeneratorInitial value)? initial,
    TResult? Function(WodGeneratorLoading value)? loading,
    TResult? Function(WodGeneratorSuccess value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WodGeneratorInitial value)? initial,
    TResult Function(WodGeneratorLoading value)? loading,
    TResult Function(WodGeneratorSuccess value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WodsGeneratorStateCopyWith<$Res> {
  factory $WodsGeneratorStateCopyWith(
          WodsGeneratorState value, $Res Function(WodsGeneratorState) then) =
      _$WodsGeneratorStateCopyWithImpl<$Res, WodsGeneratorState>;
}

/// @nodoc
class _$WodsGeneratorStateCopyWithImpl<$Res, $Val extends WodsGeneratorState>
    implements $WodsGeneratorStateCopyWith<$Res> {
  _$WodsGeneratorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WodGeneratorInitialImplCopyWith<$Res> {
  factory _$$WodGeneratorInitialImplCopyWith(_$WodGeneratorInitialImpl value,
          $Res Function(_$WodGeneratorInitialImpl) then) =
      __$$WodGeneratorInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WodGeneratorInitialImplCopyWithImpl<$Res>
    extends _$WodsGeneratorStateCopyWithImpl<$Res, _$WodGeneratorInitialImpl>
    implements _$$WodGeneratorInitialImplCopyWith<$Res> {
  __$$WodGeneratorInitialImplCopyWithImpl(_$WodGeneratorInitialImpl _value,
      $Res Function(_$WodGeneratorInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WodGeneratorInitialImpl implements WodGeneratorInitial {
  const _$WodGeneratorInitialImpl();

  @override
  String toString() {
    return 'WodsGeneratorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WodGeneratorInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? prompt, List<Wod> wods) success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? prompt, List<Wod> wods)? success,
    TResult? Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? prompt, List<Wod> wods)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(WodGeneratorInitial value) initial,
    required TResult Function(WodGeneratorLoading value) loading,
    required TResult Function(WodGeneratorSuccess value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WodGeneratorInitial value)? initial,
    TResult? Function(WodGeneratorLoading value)? loading,
    TResult? Function(WodGeneratorSuccess value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WodGeneratorInitial value)? initial,
    TResult Function(WodGeneratorLoading value)? loading,
    TResult Function(WodGeneratorSuccess value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WodGeneratorInitial implements WodsGeneratorState {
  const factory WodGeneratorInitial() = _$WodGeneratorInitialImpl;
}

/// @nodoc
abstract class _$$WodGeneratorLoadingImplCopyWith<$Res> {
  factory _$$WodGeneratorLoadingImplCopyWith(_$WodGeneratorLoadingImpl value,
          $Res Function(_$WodGeneratorLoadingImpl) then) =
      __$$WodGeneratorLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WodGeneratorLoadingImplCopyWithImpl<$Res>
    extends _$WodsGeneratorStateCopyWithImpl<$Res, _$WodGeneratorLoadingImpl>
    implements _$$WodGeneratorLoadingImplCopyWith<$Res> {
  __$$WodGeneratorLoadingImplCopyWithImpl(_$WodGeneratorLoadingImpl _value,
      $Res Function(_$WodGeneratorLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WodGeneratorLoadingImpl implements WodGeneratorLoading {
  const _$WodGeneratorLoadingImpl();

  @override
  String toString() {
    return 'WodsGeneratorState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WodGeneratorLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? prompt, List<Wod> wods) success,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? prompt, List<Wod> wods)? success,
    TResult? Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? prompt, List<Wod> wods)? success,
    TResult Function(String error)? failure,
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
    required TResult Function(WodGeneratorInitial value) initial,
    required TResult Function(WodGeneratorLoading value) loading,
    required TResult Function(WodGeneratorSuccess value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WodGeneratorInitial value)? initial,
    TResult? Function(WodGeneratorLoading value)? loading,
    TResult? Function(WodGeneratorSuccess value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WodGeneratorInitial value)? initial,
    TResult Function(WodGeneratorLoading value)? loading,
    TResult Function(WodGeneratorSuccess value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WodGeneratorLoading implements WodsGeneratorState {
  const factory WodGeneratorLoading() = _$WodGeneratorLoadingImpl;
}

/// @nodoc
abstract class _$$WodGeneratorSuccessImplCopyWith<$Res> {
  factory _$$WodGeneratorSuccessImplCopyWith(_$WodGeneratorSuccessImpl value,
          $Res Function(_$WodGeneratorSuccessImpl) then) =
      __$$WodGeneratorSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? prompt, List<Wod> wods});
}

/// @nodoc
class __$$WodGeneratorSuccessImplCopyWithImpl<$Res>
    extends _$WodsGeneratorStateCopyWithImpl<$Res, _$WodGeneratorSuccessImpl>
    implements _$$WodGeneratorSuccessImplCopyWith<$Res> {
  __$$WodGeneratorSuccessImplCopyWithImpl(_$WodGeneratorSuccessImpl _value,
      $Res Function(_$WodGeneratorSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prompt = freezed,
    Object? wods = null,
  }) {
    return _then(_$WodGeneratorSuccessImpl(
      prompt: freezed == prompt
          ? _value.prompt
          : prompt // ignore: cast_nullable_to_non_nullable
              as String?,
      wods: null == wods
          ? _value._wods
          : wods // ignore: cast_nullable_to_non_nullable
              as List<Wod>,
    ));
  }
}

/// @nodoc

class _$WodGeneratorSuccessImpl implements WodGeneratorSuccess {
  const _$WodGeneratorSuccessImpl({this.prompt, required final List<Wod> wods})
      : _wods = wods;

  @override
  final String? prompt;
  final List<Wod> _wods;
  @override
  List<Wod> get wods {
    if (_wods is EqualUnmodifiableListView) return _wods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wods);
  }

  @override
  String toString() {
    return 'WodsGeneratorState.success(prompt: $prompt, wods: $wods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WodGeneratorSuccessImpl &&
            (identical(other.prompt, prompt) || other.prompt == prompt) &&
            const DeepCollectionEquality().equals(other._wods, _wods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, prompt, const DeepCollectionEquality().hash(_wods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WodGeneratorSuccessImplCopyWith<_$WodGeneratorSuccessImpl> get copyWith =>
      __$$WodGeneratorSuccessImplCopyWithImpl<_$WodGeneratorSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? prompt, List<Wod> wods) success,
    required TResult Function(String error) failure,
  }) {
    return success(prompt, wods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? prompt, List<Wod> wods)? success,
    TResult? Function(String error)? failure,
  }) {
    return success?.call(prompt, wods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? prompt, List<Wod> wods)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(prompt, wods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WodGeneratorInitial value) initial,
    required TResult Function(WodGeneratorLoading value) loading,
    required TResult Function(WodGeneratorSuccess value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WodGeneratorInitial value)? initial,
    TResult? Function(WodGeneratorLoading value)? loading,
    TResult? Function(WodGeneratorSuccess value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WodGeneratorInitial value)? initial,
    TResult Function(WodGeneratorLoading value)? loading,
    TResult Function(WodGeneratorSuccess value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class WodGeneratorSuccess implements WodsGeneratorState {
  const factory WodGeneratorSuccess(
      {final String? prompt,
      required final List<Wod> wods}) = _$WodGeneratorSuccessImpl;

  String? get prompt;
  List<Wod> get wods;
  @JsonKey(ignore: true)
  _$$WodGeneratorSuccessImplCopyWith<_$WodGeneratorSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$WodsGeneratorStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'WodsGeneratorState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? prompt, List<Wod> wods) success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String? prompt, List<Wod> wods)? success,
    TResult? Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? prompt, List<Wod> wods)? success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WodGeneratorInitial value) initial,
    required TResult Function(WodGeneratorLoading value) loading,
    required TResult Function(WodGeneratorSuccess value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WodGeneratorInitial value)? initial,
    TResult? Function(WodGeneratorLoading value)? loading,
    TResult? Function(WodGeneratorSuccess value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WodGeneratorInitial value)? initial,
    TResult Function(WodGeneratorLoading value)? loading,
    TResult Function(WodGeneratorSuccess value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements WodsGeneratorState {
  const factory _Failure({required final String error}) = _$FailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
