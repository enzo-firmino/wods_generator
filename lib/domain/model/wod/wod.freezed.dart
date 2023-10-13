// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wod _$WodFromJson(Map<String, dynamic> json) {
  return _Wod.fromJson(json);
}

/// @nodoc
mixin _$Wod {
  String get name => throw _privateConstructorUsedError;
  int? get timecap => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<Exercise> get exercises => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WodCopyWith<Wod> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WodCopyWith<$Res> {
  factory $WodCopyWith(Wod value, $Res Function(Wod) then) = _$WodCopyWithImpl<$Res, Wod>;
  @useResult
  $Res call({String name, int? timecap, String type, List<Exercise> exercises});
}

/// @nodoc
class _$WodCopyWithImpl<$Res, $Val extends Wod> implements $WodCopyWith<$Res> {
  _$WodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? timecap = freezed,
    Object? type = null,
    Object? exercises = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timecap: freezed == timecap
          ? _value.timecap
          : timecap // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value.exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WodImplCopyWith<$Res> implements $WodCopyWith<$Res> {
  factory _$$WodImplCopyWith(_$WodImpl value, $Res Function(_$WodImpl) then) =
      __$$WodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int? timecap, String type, List<Exercise> exercises});
}

/// @nodoc
class __$$WodImplCopyWithImpl<$Res> extends _$WodCopyWithImpl<$Res, _$WodImpl>
    implements _$$WodImplCopyWith<$Res> {
  __$$WodImplCopyWithImpl(_$WodImpl _value, $Res Function(_$WodImpl) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? timecap = freezed,
    Object? type = null,
    Object? exercises = null,
  }) {
    return _then(_$WodImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timecap: freezed == timecap
          ? _value.timecap
          : timecap // ignore: cast_nullable_to_non_nullable
              as int?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      exercises: null == exercises
          ? _value._exercises
          : exercises // ignore: cast_nullable_to_non_nullable
              as List<Exercise>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WodImpl with DiagnosticableTreeMixin implements _Wod {
  const _$WodImpl(
      {required this.name,
      this.timecap,
      required this.type,
      required final List<Exercise> exercises})
      : _exercises = exercises;

  factory _$WodImpl.fromJson(Map<String, dynamic> json) => _$$WodImplFromJson(json);

  @override
  final String name;
  @override
  final int? timecap;
  @override
  final String type;
  final List<Exercise> _exercises;
  @override
  List<Exercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Wod(name: $name, timecap: $timecap, type: $type, exercises: $exercises)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Wod'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('timecap', timecap))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('exercises', exercises));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WodImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timecap, timecap) || other.timecap == timecap) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._exercises, _exercises));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, timecap, type, const DeepCollectionEquality().hash(_exercises));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WodImplCopyWith<_$WodImpl> get copyWith =>
      __$$WodImplCopyWithImpl<_$WodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WodImplToJson(
      this,
    );
  }
}

abstract class _Wod implements Wod {
  const factory _Wod(
      {required final String name,
      final int? timecap,
      required final String type,
      required final List<Exercise> exercises}) = _$WodImpl;

  factory _Wod.fromJson(Map<String, dynamic> json) = _$WodImpl.fromJson;

  @override
  String get name;
  @override
  int? get timecap;
  @override
  String get type;
  @override
  List<Exercise> get exercises;
  @override
  @JsonKey(ignore: true)
  _$$WodImplCopyWith<_$WodImpl> get copyWith => throw _privateConstructorUsedError;
}
