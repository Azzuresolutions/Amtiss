// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionStateTearOff {
  const _$QuestionStateTearOff();

  _QuestionState call(
      {required ResultState state,
      required List<ReportDetailQuestion> reportDetailQuestion}) {
    return _QuestionState(
      state: state,
      reportDetailQuestion: reportDetailQuestion,
    );
  }
}

/// @nodoc
const $QuestionState = _$QuestionStateTearOff();

/// @nodoc
mixin _$QuestionState {
  ResultState get state => throw _privateConstructorUsedError;
  List<ReportDetailQuestion> get reportDetailQuestion =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionStateCopyWith<QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionStateCopyWith<$Res> {
  factory $QuestionStateCopyWith(
          QuestionState value, $Res Function(QuestionState) then) =
      _$QuestionStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState state, List<ReportDetailQuestion> reportDetailQuestion});

  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class _$QuestionStateCopyWithImpl<$Res>
    implements $QuestionStateCopyWith<$Res> {
  _$QuestionStateCopyWithImpl(this._value, this._then);

  final QuestionState _value;
  // ignore: unused_field
  final $Res Function(QuestionState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? reportDetailQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      reportDetailQuestion: reportDetailQuestion == freezed
          ? _value.reportDetailQuestion
          : reportDetailQuestion // ignore: cast_nullable_to_non_nullable
              as List<ReportDetailQuestion>,
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
abstract class _$QuestionStateCopyWith<$Res>
    implements $QuestionStateCopyWith<$Res> {
  factory _$QuestionStateCopyWith(
          _QuestionState value, $Res Function(_QuestionState) then) =
      __$QuestionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState state, List<ReportDetailQuestion> reportDetailQuestion});

  @override
  $ResultStateCopyWith<$Res> get state;
}

/// @nodoc
class __$QuestionStateCopyWithImpl<$Res>
    extends _$QuestionStateCopyWithImpl<$Res>
    implements _$QuestionStateCopyWith<$Res> {
  __$QuestionStateCopyWithImpl(
      _QuestionState _value, $Res Function(_QuestionState) _then)
      : super(_value, (v) => _then(v as _QuestionState));

  @override
  _QuestionState get _value => super._value as _QuestionState;

  @override
  $Res call({
    Object? state = freezed,
    Object? reportDetailQuestion = freezed,
  }) {
    return _then(_QuestionState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      reportDetailQuestion: reportDetailQuestion == freezed
          ? _value.reportDetailQuestion
          : reportDetailQuestion // ignore: cast_nullable_to_non_nullable
              as List<ReportDetailQuestion>,
    ));
  }
}

/// @nodoc

class _$_QuestionState implements _QuestionState {
  const _$_QuestionState(
      {required this.state, required this.reportDetailQuestion});

  @override
  final ResultState state;
  @override
  final List<ReportDetailQuestion> reportDetailQuestion;

  @override
  String toString() {
    return 'QuestionState(state: $state, reportDetailQuestion: $reportDetailQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.reportDetailQuestion, reportDetailQuestion));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(reportDetailQuestion));

  @JsonKey(ignore: true)
  @override
  _$QuestionStateCopyWith<_QuestionState> get copyWith =>
      __$QuestionStateCopyWithImpl<_QuestionState>(this, _$identity);
}

abstract class _QuestionState implements QuestionState {
  const factory _QuestionState(
          {required ResultState state,
          required List<ReportDetailQuestion> reportDetailQuestion}) =
      _$_QuestionState;

  @override
  ResultState get state;
  @override
  List<ReportDetailQuestion> get reportDetailQuestion;
  @override
  @JsonKey(ignore: true)
  _$QuestionStateCopyWith<_QuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestionEventTearOff {
  const _$QuestionEventTearOff();

  _Question question({int? id}) {
    return _Question(
      id: id,
    );
  }
}

/// @nodoc
const $QuestionEvent = _$QuestionEventTearOff();

/// @nodoc
mixin _$QuestionEvent {
  int? get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? id)? question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? question,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Question value) question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Question value)? question,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Question value)? question,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionEventCopyWith<QuestionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEventCopyWith<$Res> {
  factory $QuestionEventCopyWith(
          QuestionEvent value, $Res Function(QuestionEvent) then) =
      _$QuestionEventCopyWithImpl<$Res>;
  $Res call({int? id});
}

/// @nodoc
class _$QuestionEventCopyWithImpl<$Res>
    implements $QuestionEventCopyWith<$Res> {
  _$QuestionEventCopyWithImpl(this._value, this._then);

  final QuestionEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$QuestionCopyWith<$Res>
    implements $QuestionEventCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) then) =
      __$QuestionCopyWithImpl<$Res>;
  @override
  $Res call({int? id});
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> extends _$QuestionEventCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(_Question _value, $Res Function(_Question) _then)
      : super(_value, (v) => _then(v as _Question));

  @override
  _Question get _value => super._value as _Question;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Question(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Question implements _Question {
  const _$_Question({this.id});

  @override
  final int? id;

  @override
  String toString() {
    return 'QuestionEvent.question(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Question &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) question,
  }) {
    return question(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int? id)? question,
  }) {
    return question?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? question,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Question value) question,
  }) {
    return question(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Question value)? question,
  }) {
    return question?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Question value)? question,
    required TResult orElse(),
  }) {
    if (question != null) {
      return question(this);
    }
    return orElse();
  }
}

abstract class _Question implements QuestionEvent {
  const factory _Question({int? id}) = _$_Question;

  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$QuestionCopyWith<_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
