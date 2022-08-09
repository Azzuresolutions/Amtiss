// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkEventTearOff {
  const _$WorkEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Get get() {
    return const _Get();
  }

  _Search search(String query) {
    return _Search(
      query,
    );
  }

  _Update update(
      {required String status,
      required String activity,
      required String priority}) {
    return _Update(
      status: status,
      activity: activity,
      priority: priority,
    );
  }
}

/// @nodoc
const $WorkEvent = _$WorkEventTearOff();

/// @nodoc
mixin _$WorkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() get,
    required TResult Function(String query) search,
    required TResult Function(String status, String activity, String priority)
        update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
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
abstract class $WorkEventCopyWith<$Res> {
  factory $WorkEventCopyWith(WorkEvent value, $Res Function(WorkEvent) then) =
      _$WorkEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkEventCopyWithImpl<$Res> implements $WorkEventCopyWith<$Res> {
  _$WorkEventCopyWithImpl(this._value, this._then);

  final WorkEvent _value;
  // ignore: unused_field
  final $Res Function(WorkEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$WorkEventCopyWithImpl<$Res>
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
    return 'WorkEvent.started()';
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
    required TResult Function() get,
    required TResult Function(String query) search,
    required TResult Function(String status, String activity, String priority)
        update,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
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

abstract class _Started implements WorkEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$GetCopyWith<$Res> {
  factory _$GetCopyWith(_Get value, $Res Function(_Get) then) =
      __$GetCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetCopyWithImpl<$Res> extends _$WorkEventCopyWithImpl<$Res>
    implements _$GetCopyWith<$Res> {
  __$GetCopyWithImpl(_Get _value, $Res Function(_Get) _then)
      : super(_value, (v) => _then(v as _Get));

  @override
  _Get get _value => super._value as _Get;
}

/// @nodoc

class _$_Get implements _Get {
  const _$_Get();

  @override
  String toString() {
    return 'WorkEvent.get()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Get);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() get,
    required TResult Function(String query) search,
    required TResult Function(String status, String activity, String priority)
        update,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
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

abstract class _Get implements WorkEvent {
  const factory _Get() = _$_Get;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$WorkEventCopyWithImpl<$Res>
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
    return 'WorkEvent.search(query: $query)';
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
    required TResult Function() get,
    required TResult Function(String query) search,
    required TResult Function(String status, String activity, String priority)
        update,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
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

abstract class _Search implements WorkEvent {
  const factory _Search(String query) = _$_Search;

  String get query;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCopyWith<$Res> {
  factory _$UpdateCopyWith(_Update value, $Res Function(_Update) then) =
      __$UpdateCopyWithImpl<$Res>;
  $Res call({String status, String activity, String priority});
}

/// @nodoc
class __$UpdateCopyWithImpl<$Res> extends _$WorkEventCopyWithImpl<$Res>
    implements _$UpdateCopyWith<$Res> {
  __$UpdateCopyWithImpl(_Update _value, $Res Function(_Update) _then)
      : super(_value, (v) => _then(v as _Update));

  @override
  _Update get _value => super._value as _Update;

  @override
  $Res call({
    Object? status = freezed,
    Object? activity = freezed,
    Object? priority = freezed,
  }) {
    return _then(_Update(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Update implements _Update {
  const _$_Update(
      {required this.status, required this.activity, required this.priority});

  @override
  final String status;
  @override
  final String activity;
  @override
  final String priority;

  @override
  String toString() {
    return 'WorkEvent.update(status: $status, activity: $activity, priority: $priority)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Update &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality().equals(other.priority, priority));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(activity),
      const DeepCollectionEquality().hash(priority));

  @JsonKey(ignore: true)
  @override
  _$UpdateCopyWith<_Update> get copyWith =>
      __$UpdateCopyWithImpl<_Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() get,
    required TResult Function(String query) search,
    required TResult Function(String status, String activity, String priority)
        update,
  }) {
    return update(status, activity, priority);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
  }) {
    return update?.call(status, activity, priority);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? get,
    TResult Function(String query)? search,
    TResult Function(String status, String activity, String priority)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(status, activity, priority);
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

abstract class _Update implements WorkEvent {
  const factory _Update(
      {required String status,
      required String activity,
      required String priority}) = _$_Update;

  String get status;
  String get activity;
  String get priority;
  @JsonKey(ignore: true)
  _$UpdateCopyWith<_Update> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$WorkStateTearOff {
  const _$WorkStateTearOff();

  _WorkState call(
      {required ResultState state, required List<WorkOrder> works}) {
    return _WorkState(
      state: state,
      works: works,
    );
  }
}

/// @nodoc
const $WorkState = _$WorkStateTearOff();

/// @nodoc
mixin _$WorkState {
  ResultState get state => throw _privateConstructorUsedError;
  List<WorkOrder> get works => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkStateCopyWith<WorkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkStateCopyWith<$Res> {
  factory $WorkStateCopyWith(WorkState value, $Res Function(WorkState) then) =
      _$WorkStateCopyWithImpl<$Res>;
  $Res call({ResultState state, List<WorkOrder> works});

  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class _$WorkStateCopyWithImpl<$Res> implements $WorkStateCopyWith<$Res> {
  _$WorkStateCopyWithImpl(this._value, this._then);

  final WorkState _value;
  // ignore: unused_field
  final $Res Function(WorkState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? works = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      works: works == freezed
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<WorkOrder>,
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
abstract class _$WorkStateCopyWith<$Res> implements $WorkStateCopyWith<$Res> {
  factory _$WorkStateCopyWith(
          _WorkState value, $Res Function(_WorkState) then) =
      __$WorkStateCopyWithImpl<$Res>;
  @override
  $Res call({ResultState state, List<WorkOrder> works});

  @override
  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class __$WorkStateCopyWithImpl<$Res> extends _$WorkStateCopyWithImpl<$Res>
    implements _$WorkStateCopyWith<$Res> {
  __$WorkStateCopyWithImpl(_WorkState _value, $Res Function(_WorkState) _then)
      : super(_value, (v) => _then(v as _WorkState));

  @override
  _WorkState get _value => super._value as _WorkState;

  @override
  $Res call({
    Object? state = freezed,
    Object? works = freezed,
  }) {
    return _then(_WorkState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      works: works == freezed
          ? _value.works
          : works // ignore: cast_nullable_to_non_nullable
              as List<WorkOrder>,
    ));
  }
}

/// @nodoc

class _$_WorkState implements _WorkState {
  const _$_WorkState({required this.state, required this.works});

  @override
  final ResultState state;
  @override
  final List<WorkOrder> works;

  @override
  String toString() {
    return 'WorkState(state: $state, works: $works)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.works, works));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(works));

  @JsonKey(ignore: true)
  @override
  _$WorkStateCopyWith<_WorkState> get copyWith =>
      __$WorkStateCopyWithImpl<_WorkState>(this, _$identity);
}

abstract class _WorkState implements WorkState {
  const factory _WorkState(
      {required ResultState state,
      required List<WorkOrder> works}) = _$_WorkState;

  @override
  ResultState get state;
  @override
  List<WorkOrder> get works;
  @override
  @JsonKey(ignore: true)
  _$WorkStateCopyWith<_WorkState> get copyWith =>
      throw _privateConstructorUsedError;
}
