// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyResult _$SurveyResultFromJson(Map<String, dynamic> json) {
  return _SurveyResult.fromJson(json);
}

/// @nodoc
class _$SurveyResultTearOff {
  const _$SurveyResultTearOff();

  _SurveyResult call(
      {@JsonKey(name: "Survey_Order") List<SurveyOrder>? surveyOrder,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg}) {
    return _SurveyResult(
      surveyOrder: surveyOrder,
      status: status,
      msg: msg,
    );
  }

  SurveyResult fromJson(Map<String, Object?> json) {
    return SurveyResult.fromJson(json);
  }
}

/// @nodoc
const $SurveyResult = _$SurveyResultTearOff();

/// @nodoc
mixin _$SurveyResult {
  @JsonKey(name: "Survey_Order")
  List<SurveyOrder>? get surveyOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyResultCopyWith<SurveyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResultCopyWith<$Res> {
  factory $SurveyResultCopyWith(
          SurveyResult value, $Res Function(SurveyResult) then) =
      _$SurveyResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Survey_Order") List<SurveyOrder>? surveyOrder,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg});
}

/// @nodoc
class _$SurveyResultCopyWithImpl<$Res> implements $SurveyResultCopyWith<$Res> {
  _$SurveyResultCopyWithImpl(this._value, this._then);

  final SurveyResult _value;
  // ignore: unused_field
  final $Res Function(SurveyResult) _then;

  @override
  $Res call({
    Object? surveyOrder = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      surveyOrder: surveyOrder == freezed
          ? _value.surveyOrder
          : surveyOrder // ignore: cast_nullable_to_non_nullable
              as List<SurveyOrder>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SurveyResultCopyWith<$Res>
    implements $SurveyResultCopyWith<$Res> {
  factory _$SurveyResultCopyWith(
          _SurveyResult value, $Res Function(_SurveyResult) then) =
      __$SurveyResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Survey_Order") List<SurveyOrder>? surveyOrder,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg});
}

/// @nodoc
class __$SurveyResultCopyWithImpl<$Res> extends _$SurveyResultCopyWithImpl<$Res>
    implements _$SurveyResultCopyWith<$Res> {
  __$SurveyResultCopyWithImpl(
      _SurveyResult _value, $Res Function(_SurveyResult) _then)
      : super(_value, (v) => _then(v as _SurveyResult));

  @override
  _SurveyResult get _value => super._value as _SurveyResult;

  @override
  $Res call({
    Object? surveyOrder = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_SurveyResult(
      surveyOrder: surveyOrder == freezed
          ? _value.surveyOrder
          : surveyOrder // ignore: cast_nullable_to_non_nullable
              as List<SurveyOrder>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyResult implements _SurveyResult {
  const _$_SurveyResult(
      {@JsonKey(name: "Survey_Order") this.surveyOrder,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg});

  factory _$_SurveyResult.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyResultFromJson(json);

  @override
  @JsonKey(name: "Survey_Order")
  final List<SurveyOrder>? surveyOrder;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;

  @override
  String toString() {
    return 'SurveyResult(surveyOrder: $surveyOrder, status: $status, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyResult &&
            const DeepCollectionEquality()
                .equals(other.surveyOrder, surveyOrder) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surveyOrder),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$SurveyResultCopyWith<_SurveyResult> get copyWith =>
      __$SurveyResultCopyWithImpl<_SurveyResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyResultToJson(this);
  }
}

abstract class _SurveyResult implements SurveyResult {
  const factory _SurveyResult(
      {@JsonKey(name: "Survey_Order") List<SurveyOrder>? surveyOrder,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg}) = _$_SurveyResult;

  factory _SurveyResult.fromJson(Map<String, dynamic> json) =
      _$_SurveyResult.fromJson;

  @override
  @JsonKey(name: "Survey_Order")
  List<SurveyOrder>? get surveyOrder;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$SurveyResultCopyWith<_SurveyResult> get copyWith =>
      throw _privateConstructorUsedError;
}

SurveyOrder _$SurveyOrderFromJson(Map<String, dynamic> json) {
  return _SurveyOrder.fromJson(json);
}

/// @nodoc
class _$SurveyOrderTearOff {
  const _$SurveyOrderTearOff();

  _SurveyOrder call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "survey_id") List<dynamic>? surveyId,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "assignment_id") List<dynamic>? assignmentId,
      @JsonKey(name: "user_id") List<dynamic>? userId,
      @JsonKey(name: "create_date") DateTime? createDate,
      @JsonKey(name: "start_datetime") DateTime? startDatetime,
      @JsonKey(name: "end_datetime") DateTime? endDatetime}) {
    return _SurveyOrder(
      id: id,
      surveyId: surveyId,
      state: state,
      assignmentId: assignmentId,
      userId: userId,
      createDate: createDate,
      startDatetime: startDatetime,
      endDatetime: endDatetime,
    );
  }

  SurveyOrder fromJson(Map<String, Object?> json) {
    return SurveyOrder.fromJson(json);
  }
}

/// @nodoc
const $SurveyOrder = _$SurveyOrderTearOff();

/// @nodoc
mixin _$SurveyOrder {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "survey_id")
  List<dynamic>? get surveyId => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "assignment_id")
  List<dynamic>? get assignmentId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  List<dynamic>? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "create_date")
  DateTime? get createDate => throw _privateConstructorUsedError;
  @JsonKey(name: "start_datetime")
  DateTime? get startDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: "end_datetime")
  DateTime? get endDatetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyOrderCopyWith<SurveyOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyOrderCopyWith<$Res> {
  factory $SurveyOrderCopyWith(
          SurveyOrder value, $Res Function(SurveyOrder) then) =
      _$SurveyOrderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "survey_id") List<dynamic>? surveyId,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "assignment_id") List<dynamic>? assignmentId,
      @JsonKey(name: "user_id") List<dynamic>? userId,
      @JsonKey(name: "create_date") DateTime? createDate,
      @JsonKey(name: "start_datetime") DateTime? startDatetime,
      @JsonKey(name: "end_datetime") DateTime? endDatetime});
}

/// @nodoc
class _$SurveyOrderCopyWithImpl<$Res> implements $SurveyOrderCopyWith<$Res> {
  _$SurveyOrderCopyWithImpl(this._value, this._then);

  final SurveyOrder _value;
  // ignore: unused_field
  final $Res Function(SurveyOrder) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? state = freezed,
    Object? assignmentId = freezed,
    Object? userId = freezed,
    Object? createDate = freezed,
    Object? startDatetime = freezed,
    Object? endDatetime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      assignmentId: assignmentId == freezed
          ? _value.assignmentId
          : assignmentId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDatetime: startDatetime == freezed
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDatetime: endDatetime == freezed
          ? _value.endDatetime
          : endDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$SurveyOrderCopyWith<$Res>
    implements $SurveyOrderCopyWith<$Res> {
  factory _$SurveyOrderCopyWith(
          _SurveyOrder value, $Res Function(_SurveyOrder) then) =
      __$SurveyOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "survey_id") List<dynamic>? surveyId,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "assignment_id") List<dynamic>? assignmentId,
      @JsonKey(name: "user_id") List<dynamic>? userId,
      @JsonKey(name: "create_date") DateTime? createDate,
      @JsonKey(name: "start_datetime") DateTime? startDatetime,
      @JsonKey(name: "end_datetime") DateTime? endDatetime});
}

/// @nodoc
class __$SurveyOrderCopyWithImpl<$Res> extends _$SurveyOrderCopyWithImpl<$Res>
    implements _$SurveyOrderCopyWith<$Res> {
  __$SurveyOrderCopyWithImpl(
      _SurveyOrder _value, $Res Function(_SurveyOrder) _then)
      : super(_value, (v) => _then(v as _SurveyOrder));

  @override
  _SurveyOrder get _value => super._value as _SurveyOrder;

  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? state = freezed,
    Object? assignmentId = freezed,
    Object? userId = freezed,
    Object? createDate = freezed,
    Object? startDatetime = freezed,
    Object? endDatetime = freezed,
  }) {
    return _then(_SurveyOrder(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      assignmentId: assignmentId == freezed
          ? _value.assignmentId
          : assignmentId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createDate: createDate == freezed
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDatetime: startDatetime == freezed
          ? _value.startDatetime
          : startDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDatetime: endDatetime == freezed
          ? _value.endDatetime
          : endDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyOrder implements _SurveyOrder {
  const _$_SurveyOrder(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "survey_id") this.surveyId,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "assignment_id") this.assignmentId,
      @JsonKey(name: "user_id") this.userId,
      @JsonKey(name: "create_date") this.createDate,
      @JsonKey(name: "start_datetime") this.startDatetime,
      @JsonKey(name: "end_datetime") this.endDatetime});

  factory _$_SurveyOrder.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyOrderFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "survey_id")
  final List<dynamic>? surveyId;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "assignment_id")
  final List<dynamic>? assignmentId;
  @override
  @JsonKey(name: "user_id")
  final List<dynamic>? userId;
  @override
  @JsonKey(name: "create_date")
  final DateTime? createDate;
  @override
  @JsonKey(name: "start_datetime")
  final DateTime? startDatetime;
  @override
  @JsonKey(name: "end_datetime")
  final DateTime? endDatetime;

  @override
  String toString() {
    return 'SurveyOrder(id: $id, surveyId: $surveyId, state: $state, assignmentId: $assignmentId, userId: $userId, createDate: $createDate, startDatetime: $startDatetime, endDatetime: $endDatetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SurveyOrder &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.surveyId, surveyId) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.assignmentId, assignmentId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.createDate, createDate) &&
            const DeepCollectionEquality()
                .equals(other.startDatetime, startDatetime) &&
            const DeepCollectionEquality()
                .equals(other.endDatetime, endDatetime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(surveyId),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(assignmentId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(createDate),
      const DeepCollectionEquality().hash(startDatetime),
      const DeepCollectionEquality().hash(endDatetime));

  @JsonKey(ignore: true)
  @override
  _$SurveyOrderCopyWith<_SurveyOrder> get copyWith =>
      __$SurveyOrderCopyWithImpl<_SurveyOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyOrderToJson(this);
  }
}

abstract class _SurveyOrder implements SurveyOrder {
  const factory _SurveyOrder(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "survey_id") List<dynamic>? surveyId,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "assignment_id") List<dynamic>? assignmentId,
      @JsonKey(name: "user_id") List<dynamic>? userId,
      @JsonKey(name: "create_date") DateTime? createDate,
      @JsonKey(name: "start_datetime") DateTime? startDatetime,
      @JsonKey(name: "end_datetime") DateTime? endDatetime}) = _$_SurveyOrder;

  factory _SurveyOrder.fromJson(Map<String, dynamic> json) =
      _$_SurveyOrder.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "survey_id")
  List<dynamic>? get surveyId;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "assignment_id")
  List<dynamic>? get assignmentId;
  @override
  @JsonKey(name: "user_id")
  List<dynamic>? get userId;
  @override
  @JsonKey(name: "create_date")
  DateTime? get createDate;
  @override
  @JsonKey(name: "start_datetime")
  DateTime? get startDatetime;
  @override
  @JsonKey(name: "end_datetime")
  DateTime? get endDatetime;
  @override
  @JsonKey(ignore: true)
  _$SurveyOrderCopyWith<_SurveyOrder> get copyWith =>
      throw _privateConstructorUsedError;
}
