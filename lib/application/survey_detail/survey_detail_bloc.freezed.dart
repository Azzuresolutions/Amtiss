// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SurveyDetailEventTearOff {
  const _$SurveyDetailEventTearOff();

  _Started started(String initialStatus) {
    return _Started(
      initialStatus,
    );
  }

  _Update update({required String id, required String status}) {
    return _Update(
      id: id,
      status: status,
    );
  }
}

/// @nodoc
const $SurveyDetailEvent = _$SurveyDetailEventTearOff();

/// @nodoc
mixin _$SurveyDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function(String id, String status) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function(String id, String status)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function(String id, String status)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyDetailEventCopyWith<$Res> {
  factory $SurveyDetailEventCopyWith(
          SurveyDetailEvent value, $Res Function(SurveyDetailEvent) then) =
      _$SurveyDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveyDetailEventCopyWithImpl<$Res>
    implements $SurveyDetailEventCopyWith<$Res> {
  _$SurveyDetailEventCopyWithImpl(this._value, this._then);

  final SurveyDetailEvent _value;
  // ignore: unused_field
  final $Res Function(SurveyDetailEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String initialStatus});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SurveyDetailEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? initialStatus = freezed,
  }) {
    return _then(_Started(
      initialStatus == freezed
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.initialStatus);

  @override
  final String initialStatus;

  @override
  String toString() {
    return 'SurveyDetailEvent.started(initialStatus: $initialStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            const DeepCollectionEquality()
                .equals(other.initialStatus, initialStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialStatus));

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function(String id, String status) update,
  }) {
    return started(initialStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function(String id, String status)? update,
  }) {
    return started?.call(initialStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function(String id, String status)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(initialStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SurveyDetailEvent {
  const factory _Started(String initialStatus) = _$_Started;

  String get initialStatus;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({String id, String status});
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$SurveyDetailEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_Update(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update({required this.id, required this.status});

  @override
  final String id;
  @override
  final String status;

  @override
  String toString() {
    return 'SurveyDetailEvent.update(id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Update &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function(String id, String status) update,
  }) {
    return update(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function(String id, String status)? update,
  }) {
    return update?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function(String id, String status)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements SurveyDetailEvent {
  const factory _Update({required String id, required String status}) =
      _$_Update;

  String get id;
  String get status;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SurveyDetailStateTearOff {
  const _$SurveyDetailStateTearOff();

  _ReportDetailState call(
      {required ResultState state, required String statusState}) {
    return _ReportDetailState(
      state: state,
      statusState: statusState,
    );
  }
}

/// @nodoc
const $SurveyDetailState = _$SurveyDetailStateTearOff();

/// @nodoc
mixin _$SurveyDetailState {
  ResultState get state => throw _privateConstructorUsedError;
  String get statusState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyDetailStateCopyWith<SurveyDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyDetailStateCopyWith<$Res> {
  factory $SurveyDetailStateCopyWith(
          SurveyDetailState value, $Res Function(SurveyDetailState) then) =
      _$SurveyDetailStateCopyWithImpl<$Res>;
  $Res call({ResultState state, String statusState});

  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SurveyDetailStateCopyWithImpl<$Res>
    implements $SurveyDetailStateCopyWith<$Res> {
  _$SurveyDetailStateCopyWithImpl(this._value, this._then);

  final SurveyDetailState _value;
  // ignore: unused_field
  final $Res Function(SurveyDetailState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? statusState = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      statusState: statusState == freezed
          ? _value.statusState
          : statusState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ResultStateCopyWith<$Res> get state {
    return $ResultStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
abstract class _$ReportDetailStateCopyWith<$Res>
    implements $SurveyDetailStateCopyWith<$Res> {
  factory _$ReportDetailStateCopyWith(
          _ReportDetailState value, $Res Function(_ReportDetailState) then) =
      __$ReportDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState state, String statusState});

  @override
  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class __$ReportDetailStateCopyWithImpl<$Res>
    extends _$SurveyDetailStateCopyWithImpl<$Res>
    implements _$ReportDetailStateCopyWith<$Res> {
  __$ReportDetailStateCopyWithImpl(
      _ReportDetailState _value, $Res Function(_ReportDetailState) _then)
      : super(_value, (v) => _then(v as _ReportDetailState));

  @override
  _ReportDetailState get _value => super._value as _ReportDetailState;

  @override
  $Res call({
    Object? state = freezed,
    Object? statusState = freezed,
  }) {
    return _then(_ReportDetailState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      statusState: statusState == freezed
          ? _value.statusState
          : statusState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReportDetailState implements _ReportDetailState {
  const _$_ReportDetailState({required this.state, required this.statusState});

  @override
  final ResultState state;
  @override
  final String statusState;

  @override
  String toString() {
    return 'SurveyDetailState(state: $state, statusState: $statusState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportDetailState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.statusState, statusState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(statusState));

  @JsonKey(ignore: true)
  @override
  _$ReportDetailStateCopyWith<_ReportDetailState> get copyWith =>
      __$ReportDetailStateCopyWithImpl<_ReportDetailState>(this, _$identity);
}

abstract class _ReportDetailState implements SurveyDetailState {
  const factory _ReportDetailState(
      {required ResultState state,
      required String statusState}) = _$_ReportDetailState;

  @override
  ResultState get state;
  @override
  String get statusState;
  @override
  @JsonKey(ignore: true)
  _$ReportDetailStateCopyWith<_ReportDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
