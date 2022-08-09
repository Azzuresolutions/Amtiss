// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SurveyEventTearOff {
  const _$SurveyEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Get get({String? surveyId, String? woId}) {
    return _Get(
      surveyId: surveyId,
      woId: woId,
    );
  }

  _Search search(String query) {
    return _Search(
      query,
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
const $SurveyEvent = _$SurveyEventTearOff();

/// @nodoc
mixin _$SurveyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? surveyId, String? woId) get,
    required TResult Function(String query) search,
    required TResult Function(String id, String status) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Get value) get,
    required TResult Function(_Search value) search,
    required TResult Function(_Update value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyEventCopyWith<$Res> {
  factory $SurveyEventCopyWith(
          SurveyEvent value, $Res Function(SurveyEvent) then) =
      _$SurveyEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SurveyEventCopyWithImpl<$Res> implements $SurveyEventCopyWith<$Res> {
  _$SurveyEventCopyWithImpl(this._value, this._then);

  final SurveyEvent _value;
  // ignore: unused_field
  final $Res Function(SurveyEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SurveyEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SurveyEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? surveyId, String? woId) get,
    required TResult Function(String query) search,
    required TResult Function(String id, String status) update,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
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
    required TResult Function(_Get value) get,
    required TResult Function(_Search value) search,
    required TResult Function(_Update value) update,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SurveyEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetCopyWith<$Res> {
  factory _$GetCopyWith(_Get value, $Res Function(_Get) then) =
      __$GetCopyWithImpl<$Res>;
  $Res call({String? surveyId, String? woId});
}

/// @nodoc
class __$GetCopyWithImpl<$Res> extends _$SurveyEventCopyWithImpl<$Res>
    implements _$GetCopyWith<$Res> {
  __$GetCopyWithImpl(_Get _value, $Res Function(_Get) _then)
      : super(_value, (v) => _then(v as _Get));

  @override
  _Get get _value => super._value as _Get;

  @override
  $Res call({
    Object? surveyId = freezed,
    Object? woId = freezed,
  }) {
    return _then(_Get(
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
      woId: woId == freezed
          ? _value.woId
          : woId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Get implements _Get {
  const _$_Get({this.surveyId, this.woId});

  @override
  final String? surveyId;
  @override
  final String? woId;

  @override
  String toString() {
    return 'SurveyEvent.get(surveyId: $surveyId, woId: $woId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Get &&
            const DeepCollectionEquality().equals(other.surveyId, surveyId) &&
            const DeepCollectionEquality().equals(other.woId, woId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surveyId),
      const DeepCollectionEquality().hash(woId));

  @JsonKey(ignore: true)
  @override
  _$GetCopyWith<_Get> get copyWith =>
      __$GetCopyWithImpl<_Get>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? surveyId, String? woId) get,
    required TResult Function(String query) search,
    required TResult Function(String id, String status) update,
  }) {
    return get(surveyId, woId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
  }) {
    return get?.call(surveyId, woId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(surveyId, woId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Get value) get,
    required TResult Function(_Search value) search,
    required TResult Function(_Update value) update,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class _Get implements SurveyEvent {
  const factory _Get({String? surveyId, String? woId}) = _$_Get;

  String? get surveyId;
  String? get woId;
  @JsonKey(ignore: true)
  _$GetCopyWith<_Get> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SurveyEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_Search(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SurveyEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Search &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? surveyId, String? woId) get,
    required TResult Function(String query) search,
    required TResult Function(String id, String status) update,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Get value) get,
    required TResult Function(_Search value) search,
    required TResult Function(_Update value) update,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SurveyEvent {
  const factory _Search(String query) = _$_Search;

  String get query;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({String id, String status});
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$SurveyEventCopyWithImpl<$Res>
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
    return 'SurveyEvent.update(id: $id, status: $status)';
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
    required TResult Function() started,
    required TResult Function(String? surveyId, String? woId) get,
    required TResult Function(String query) search,
    required TResult Function(String id, String status) update,
  }) {
    return update(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
    TResult Function(String id, String status)? update,
  }) {
    return update?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? surveyId, String? woId)? get,
    TResult Function(String query)? search,
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
    required TResult Function(_Get value) get,
    required TResult Function(_Search value) search,
    required TResult Function(_Update value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Get value)? get,
    TResult Function(_Search value)? search,
    TResult Function(_Update value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _Update implements SurveyEvent {
  const factory _Update({required String id, required String status}) =
      _$_Update;

  String get id;
  String get status;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SurveyStateTearOff {
  const _$SurveyStateTearOff();

  _SurveyState call(
      {required ResultState state, required List<SurveyOrder> surveys}) {
    return _SurveyState(
      state: state,
      surveys: surveys,
    );
  }

  _ReportStateStatus empty(ResultState state, String statusState) {
    return _ReportStateStatus(
      state,
      statusState,
    );
  }
}

/// @nodoc
const $SurveyState = _$SurveyStateTearOff();

/// @nodoc
mixin _$SurveyState {
  ResultState get state => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys) $default, {
    required TResult Function(ResultState state, String statusState) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys)? $default, {
    TResult Function(ResultState state, String statusState)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys)? $default, {
    TResult Function(ResultState state, String statusState)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SurveyState value) $default, {
    required TResult Function(_ReportStateStatus value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SurveyState value)? $default, {
    TResult Function(_ReportStateStatus value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SurveyState value)? $default, {
    TResult Function(_ReportStateStatus value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SurveyStateCopyWith<SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyStateCopyWith<$Res> {
  factory $SurveyStateCopyWith(
          SurveyState value, $Res Function(SurveyState) then) =
      _$SurveyStateCopyWithImpl<$Res>;
  $Res call({ResultState state});

  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SurveyStateCopyWithImpl<$Res> implements $SurveyStateCopyWith<$Res> {
  _$SurveyStateCopyWithImpl(this._value, this._then);

  final SurveyState _value;
  // ignore: unused_field
  final $Res Function(SurveyState) _then;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
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
abstract class _$SurveyStateCopyWith<$Res>
    implements $SurveyStateCopyWith<$Res> {
  factory _$SurveyStateCopyWith(
          _SurveyState value, $Res Function(_SurveyState) then) =
      __$SurveyStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState state, List<SurveyOrder> surveys});

  @override
  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class __$SurveyStateCopyWithImpl<$Res> extends _$SurveyStateCopyWithImpl<$Res>
    implements _$SurveyStateCopyWith<$Res> {
  __$SurveyStateCopyWithImpl(
      _SurveyState _value, $Res Function(_SurveyState) _then)
      : super(_value, (v) => _then(v as _SurveyState));

  @override
  _SurveyState get _value => super._value as _SurveyState;

  @override
  $Res call({
    Object? state = freezed,
    Object? surveys = freezed,
  }) {
    return _then(_SurveyState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      surveys: surveys == freezed
          ? _value.surveys
          : surveys // ignore: cast_nullable_to_non_nullable
              as List<SurveyOrder>,
    ));
  }
}

/// @nodoc

class _$_SurveyState implements _SurveyState {
  const _$_SurveyState({required this.state, required this.surveys});

  @override
  final ResultState state;
  @override
  final List<SurveyOrder> surveys;

  @override
  String toString() {
    return 'SurveyState(state: $state, surveys: $surveys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.surveys, surveys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(surveys));

  @JsonKey(ignore: true)
  @override
  _$SurveyStateCopyWith<_SurveyState> get copyWith =>
      __$SurveyStateCopyWithImpl<_SurveyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys) $default, {
    required TResult Function(ResultState state, String statusState) empty,
  }) {
    return $default(state, surveys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys)? $default, {
    TResult Function(ResultState state, String statusState)? empty,
  }) {
    return $default?.call(state, surveys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys)? $default, {
    TResult Function(ResultState state, String statusState)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(state, surveys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SurveyState value) $default, {
    required TResult Function(_ReportStateStatus value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SurveyState value)? $default, {
    TResult Function(_ReportStateStatus value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SurveyState value)? $default, {
    TResult Function(_ReportStateStatus value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SurveyState implements SurveyState {
  const factory _SurveyState(
      {required ResultState state,
      required List<SurveyOrder> surveys}) = _$_SurveyState;

  @override
  ResultState get state;
  List<SurveyOrder> get surveys;
  @override
  @JsonKey(ignore: true)
  _$SurveyStateCopyWith<_SurveyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReportStateStatusCopyWith<$Res>
    implements $SurveyStateCopyWith<$Res> {
  factory _$ReportStateStatusCopyWith(
          _ReportStateStatus value, $Res Function(_ReportStateStatus) then) =
      __$ReportStateStatusCopyWithImpl<$Res>;
  @override
  $Res call({ResultState state, String statusState});

  @override
  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class __$ReportStateStatusCopyWithImpl<$Res>
    extends _$SurveyStateCopyWithImpl<$Res>
    implements _$ReportStateStatusCopyWith<$Res> {
  __$ReportStateStatusCopyWithImpl(
      _ReportStateStatus _value, $Res Function(_ReportStateStatus) _then)
      : super(_value, (v) => _then(v as _ReportStateStatus));

  @override
  _ReportStateStatus get _value => super._value as _ReportStateStatus;

  @override
  $Res call({
    Object? state = freezed,
    Object? statusState = freezed,
  }) {
    return _then(_ReportStateStatus(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      statusState == freezed
          ? _value.statusState
          : statusState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReportStateStatus implements _ReportStateStatus {
  const _$_ReportStateStatus(this.state, this.statusState);

  @override
  final ResultState state;
  @override
  final String statusState;

  @override
  String toString() {
    return 'SurveyState.empty(state: $state, statusState: $statusState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportStateStatus &&
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
  _$ReportStateStatusCopyWith<_ReportStateStatus> get copyWith =>
      __$ReportStateStatusCopyWithImpl<_ReportStateStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys) $default, {
    required TResult Function(ResultState state, String statusState) empty,
  }) {
    return empty(state, statusState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys)? $default, {
    TResult Function(ResultState state, String statusState)? empty,
  }) {
    return empty?.call(state, statusState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ResultState state, List<SurveyOrder> surveys)? $default, {
    TResult Function(ResultState state, String statusState)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(state, statusState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SurveyState value) $default, {
    required TResult Function(_ReportStateStatus value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_SurveyState value)? $default, {
    TResult Function(_ReportStateStatus value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SurveyState value)? $default, {
    TResult Function(_ReportStateStatus value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _ReportStateStatus implements SurveyState {
  const factory _ReportStateStatus(ResultState state, String statusState) =
      _$_ReportStateStatus;

  @override
  ResultState get state;
  String get statusState;
  @override
  @JsonKey(ignore: true)
  _$ReportStateStatusCopyWith<_ReportStateStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
