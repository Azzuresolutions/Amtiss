// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkFilterStateTearOff {
  const _$WorkFilterStateTearOff();

  _WorkFilterState call(
      {required List<WorkFilter> activities,
      required List<WorkFilter> priorities,
      required List<WorkFilter> statuses}) {
    return _WorkFilterState(
      activities: activities,
      priorities: priorities,
      statuses: statuses,
    );
  }
}

/// @nodoc
const $WorkFilterState = _$WorkFilterStateTearOff();

/// @nodoc
mixin _$WorkFilterState {
  List<WorkFilter> get activities => throw _privateConstructorUsedError;
  List<WorkFilter> get priorities => throw _privateConstructorUsedError;
  List<WorkFilter> get statuses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkFilterStateCopyWith<WorkFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkFilterStateCopyWith<$Res> {
  factory $WorkFilterStateCopyWith(
          WorkFilterState value, $Res Function(WorkFilterState) then) =
      _$WorkFilterStateCopyWithImpl<$Res>;
  $Res call(
      {List<WorkFilter> activities,
      List<WorkFilter> priorities,
      List<WorkFilter> statuses});
}

/// @nodoc
class _$WorkFilterStateCopyWithImpl<$Res>
    implements $WorkFilterStateCopyWith<$Res> {
  _$WorkFilterStateCopyWithImpl(this._value, this._then);

  final WorkFilterState _value;
  // ignore: unused_field
  final $Res Function(WorkFilterState) _then;

  @override
  $Res call({
    Object? activities = freezed,
    Object? priorities = freezed,
    Object? statuses = freezed,
  }) {
    return _then(_value.copyWith(
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<WorkFilter>,
      priorities: priorities == freezed
          ? _value.priorities
          : priorities // ignore: cast_nullable_to_non_nullable
              as List<WorkFilter>,
      statuses: statuses == freezed
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<WorkFilter>,
    ));
  }
}

/// @nodoc
abstract class _$WorkFilterStateCopyWith<$Res>
    implements $WorkFilterStateCopyWith<$Res> {
  factory _$WorkFilterStateCopyWith(
          _WorkFilterState value, $Res Function(_WorkFilterState) then) =
      __$WorkFilterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<WorkFilter> activities,
      List<WorkFilter> priorities,
      List<WorkFilter> statuses});
}

/// @nodoc
class __$WorkFilterStateCopyWithImpl<$Res>
    extends _$WorkFilterStateCopyWithImpl<$Res>
    implements _$WorkFilterStateCopyWith<$Res> {
  __$WorkFilterStateCopyWithImpl(
      _WorkFilterState _value, $Res Function(_WorkFilterState) _then)
      : super(_value, (v) => _then(v as _WorkFilterState));

  @override
  _WorkFilterState get _value => super._value as _WorkFilterState;

  @override
  $Res call({
    Object? activities = freezed,
    Object? priorities = freezed,
    Object? statuses = freezed,
  }) {
    return _then(_WorkFilterState(
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<WorkFilter>,
      priorities: priorities == freezed
          ? _value.priorities
          : priorities // ignore: cast_nullable_to_non_nullable
              as List<WorkFilter>,
      statuses: statuses == freezed
          ? _value.statuses
          : statuses // ignore: cast_nullable_to_non_nullable
              as List<WorkFilter>,
    ));
  }
}

/// @nodoc

class _$_WorkFilterState
    with DiagnosticableTreeMixin
    implements _WorkFilterState {
  const _$_WorkFilterState(
      {required this.activities,
      required this.priorities,
      required this.statuses});

  @override
  final List<WorkFilter> activities;
  @override
  final List<WorkFilter> priorities;
  @override
  final List<WorkFilter> statuses;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkFilterState(activities: $activities, priorities: $priorities, statuses: $statuses)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkFilterState'))
      ..add(DiagnosticsProperty('activities', activities))
      ..add(DiagnosticsProperty('priorities', priorities))
      ..add(DiagnosticsProperty('statuses', statuses));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkFilterState &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality()
                .equals(other.priorities, priorities) &&
            const DeepCollectionEquality().equals(other.statuses, statuses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(activities),
      const DeepCollectionEquality().hash(priorities),
      const DeepCollectionEquality().hash(statuses));

  @JsonKey(ignore: true)
  @override
  _$WorkFilterStateCopyWith<_WorkFilterState> get copyWith =>
      __$WorkFilterStateCopyWithImpl<_WorkFilterState>(this, _$identity);
}

abstract class _WorkFilterState implements WorkFilterState {
  const factory _WorkFilterState(
      {required List<WorkFilter> activities,
      required List<WorkFilter> priorities,
      required List<WorkFilter> statuses}) = _$_WorkFilterState;

  @override
  List<WorkFilter> get activities;
  @override
  List<WorkFilter> get priorities;
  @override
  List<WorkFilter> get statuses;
  @override
  @JsonKey(ignore: true)
  _$WorkFilterStateCopyWith<_WorkFilterState> get copyWith =>
      throw _privateConstructorUsedError;
}
