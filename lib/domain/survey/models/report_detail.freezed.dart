// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportDetail _$ReportDetailFromJson(Map<String, dynamic> json) {
  return _ReportDetail.fromJson(json);
}

/// @nodoc
class _$ReportDetailTearOff {
  const _$ReportDetailTearOff();

  _ReportDetail call(
      {@JsonKey(name: "Report_Detail") List<ReportDetailQuestion>? reportDetail,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg}) {
    return _ReportDetail(
      reportDetail: reportDetail,
      status: status,
      msg: msg,
    );
  }

  ReportDetail fromJson(Map<String, Object?> json) {
    return ReportDetail.fromJson(json);
  }
}

/// @nodoc
const $ReportDetail = _$ReportDetailTearOff();

/// @nodoc
mixin _$ReportDetail {
  @JsonKey(name: "Report_Detail")
  List<ReportDetailQuestion>? get reportDetail =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportDetailCopyWith<ReportDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDetailCopyWith<$Res> {
  factory $ReportDetailCopyWith(
          ReportDetail value, $Res Function(ReportDetail) then) =
      _$ReportDetailCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Report_Detail") List<ReportDetailQuestion>? reportDetail,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg});
}

/// @nodoc
class _$ReportDetailCopyWithImpl<$Res> implements $ReportDetailCopyWith<$Res> {
  _$ReportDetailCopyWithImpl(this._value, this._then);

  final ReportDetail _value;
  // ignore: unused_field
  final $Res Function(ReportDetail) _then;

  @override
  $Res call({
    Object? reportDetail = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      reportDetail: reportDetail == freezed
          ? _value.reportDetail
          : reportDetail // ignore: cast_nullable_to_non_nullable
              as List<ReportDetailQuestion>?,
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
abstract class _$ReportDetailCopyWith<$Res>
    implements $ReportDetailCopyWith<$Res> {
  factory _$ReportDetailCopyWith(
          _ReportDetail value, $Res Function(_ReportDetail) then) =
      __$ReportDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Report_Detail") List<ReportDetailQuestion>? reportDetail,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg});
}

/// @nodoc
class __$ReportDetailCopyWithImpl<$Res> extends _$ReportDetailCopyWithImpl<$Res>
    implements _$ReportDetailCopyWith<$Res> {
  __$ReportDetailCopyWithImpl(
      _ReportDetail _value, $Res Function(_ReportDetail) _then)
      : super(_value, (v) => _then(v as _ReportDetail));

  @override
  _ReportDetail get _value => super._value as _ReportDetail;

  @override
  $Res call({
    Object? reportDetail = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_ReportDetail(
      reportDetail: reportDetail == freezed
          ? _value.reportDetail
          : reportDetail // ignore: cast_nullable_to_non_nullable
              as List<ReportDetailQuestion>?,
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
class _$_ReportDetail implements _ReportDetail {
  const _$_ReportDetail(
      {@JsonKey(name: "Report_Detail") this.reportDetail,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg});

  factory _$_ReportDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ReportDetailFromJson(json);

  @override
  @JsonKey(name: "Report_Detail")
  final List<ReportDetailQuestion>? reportDetail;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;

  @override
  String toString() {
    return 'ReportDetail(reportDetail: $reportDetail, status: $status, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportDetail &&
            const DeepCollectionEquality()
                .equals(other.reportDetail, reportDetail) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reportDetail),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$ReportDetailCopyWith<_ReportDetail> get copyWith =>
      __$ReportDetailCopyWithImpl<_ReportDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportDetailToJson(this);
  }
}

abstract class _ReportDetail implements ReportDetail {
  const factory _ReportDetail(
      {@JsonKey(name: "Report_Detail") List<ReportDetailQuestion>? reportDetail,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg}) = _$_ReportDetail;

  factory _ReportDetail.fromJson(Map<String, dynamic> json) =
      _$_ReportDetail.fromJson;

  @override
  @JsonKey(name: "Report_Detail")
  List<ReportDetailQuestion>? get reportDetail;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$ReportDetailCopyWith<_ReportDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportDetailQuestion _$ReportDetailQuestionFromJson(Map<String, dynamic> json) {
  return _ReportDetailQuestion.fromJson(json);
}

/// @nodoc
class _$ReportDetailQuestionTearOff {
  const _$ReportDetailQuestionTearOff();

  _ReportDetailQuestion call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "survey_id") List<dynamic>? surveyId,
      @JsonKey(name: "question_sequence") int? questionSequence,
      @JsonKey(name: "question_id") List<dynamic>? questionId,
      @JsonKey(name: "result") String? result,
      @JsonKey(name: "page_id") List<dynamic>? pageId}) {
    return _ReportDetailQuestion(
      id: id,
      surveyId: surveyId,
      questionSequence: questionSequence,
      questionId: questionId,
      result: result,
      pageId: pageId,
    );
  }

  ReportDetailQuestion fromJson(Map<String, Object?> json) {
    return ReportDetailQuestion.fromJson(json);
  }
}

/// @nodoc
const $ReportDetailQuestion = _$ReportDetailQuestionTearOff();

/// @nodoc
mixin _$ReportDetailQuestion {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "survey_id")
  List<dynamic>? get surveyId => throw _privateConstructorUsedError;
  @JsonKey(name: "question_sequence")
  int? get questionSequence => throw _privateConstructorUsedError;
  @JsonKey(name: "question_id")
  List<dynamic>? get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: "result")
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: "page_id")
  List<dynamic>? get pageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportDetailQuestionCopyWith<ReportDetailQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDetailQuestionCopyWith<$Res> {
  factory $ReportDetailQuestionCopyWith(ReportDetailQuestion value,
          $Res Function(ReportDetailQuestion) then) =
      _$ReportDetailQuestionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "survey_id") List<dynamic>? surveyId,
      @JsonKey(name: "question_sequence") int? questionSequence,
      @JsonKey(name: "question_id") List<dynamic>? questionId,
      @JsonKey(name: "result") String? result,
      @JsonKey(name: "page_id") List<dynamic>? pageId});
}

/// @nodoc
class _$ReportDetailQuestionCopyWithImpl<$Res>
    implements $ReportDetailQuestionCopyWith<$Res> {
  _$ReportDetailQuestionCopyWithImpl(this._value, this._then);

  final ReportDetailQuestion _value;
  // ignore: unused_field
  final $Res Function(ReportDetailQuestion) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? questionSequence = freezed,
    Object? questionId = freezed,
    Object? result = freezed,
    Object? pageId = freezed,
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
      questionSequence: questionSequence == freezed
          ? _value.questionSequence
          : questionSequence // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$ReportDetailQuestionCopyWith<$Res>
    implements $ReportDetailQuestionCopyWith<$Res> {
  factory _$ReportDetailQuestionCopyWith(_ReportDetailQuestion value,
          $Res Function(_ReportDetailQuestion) then) =
      __$ReportDetailQuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "survey_id") List<dynamic>? surveyId,
      @JsonKey(name: "question_sequence") int? questionSequence,
      @JsonKey(name: "question_id") List<dynamic>? questionId,
      @JsonKey(name: "result") String? result,
      @JsonKey(name: "page_id") List<dynamic>? pageId});
}

/// @nodoc
class __$ReportDetailQuestionCopyWithImpl<$Res>
    extends _$ReportDetailQuestionCopyWithImpl<$Res>
    implements _$ReportDetailQuestionCopyWith<$Res> {
  __$ReportDetailQuestionCopyWithImpl(
      _ReportDetailQuestion _value, $Res Function(_ReportDetailQuestion) _then)
      : super(_value, (v) => _then(v as _ReportDetailQuestion));

  @override
  _ReportDetailQuestion get _value => super._value as _ReportDetailQuestion;

  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? questionSequence = freezed,
    Object? questionId = freezed,
    Object? result = freezed,
    Object? pageId = freezed,
  }) {
    return _then(_ReportDetailQuestion(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      questionSequence: questionSequence == freezed
          ? _value.questionSequence
          : questionSequence // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: questionId == freezed
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      pageId: pageId == freezed
          ? _value.pageId
          : pageId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportDetailQuestion implements _ReportDetailQuestion {
  const _$_ReportDetailQuestion(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "survey_id") this.surveyId,
      @JsonKey(name: "question_sequence") this.questionSequence,
      @JsonKey(name: "question_id") this.questionId,
      @JsonKey(name: "result") this.result,
      @JsonKey(name: "page_id") this.pageId});

  factory _$_ReportDetailQuestion.fromJson(Map<String, dynamic> json) =>
      _$$_ReportDetailQuestionFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "survey_id")
  final List<dynamic>? surveyId;
  @override
  @JsonKey(name: "question_sequence")
  final int? questionSequence;
  @override
  @JsonKey(name: "question_id")
  final List<dynamic>? questionId;
  @override
  @JsonKey(name: "result")
  final String? result;
  @override
  @JsonKey(name: "page_id")
  final List<dynamic>? pageId;

  @override
  String toString() {
    return 'ReportDetailQuestion(id: $id, surveyId: $surveyId, questionSequence: $questionSequence, questionId: $questionId, result: $result, pageId: $pageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportDetailQuestion &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.surveyId, surveyId) &&
            const DeepCollectionEquality()
                .equals(other.questionSequence, questionSequence) &&
            const DeepCollectionEquality()
                .equals(other.questionId, questionId) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.pageId, pageId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(surveyId),
      const DeepCollectionEquality().hash(questionSequence),
      const DeepCollectionEquality().hash(questionId),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(pageId));

  @JsonKey(ignore: true)
  @override
  _$ReportDetailQuestionCopyWith<_ReportDetailQuestion> get copyWith =>
      __$ReportDetailQuestionCopyWithImpl<_ReportDetailQuestion>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportDetailQuestionToJson(this);
  }
}

abstract class _ReportDetailQuestion implements ReportDetailQuestion {
  const factory _ReportDetailQuestion(
          {@JsonKey(name: "id") int? id,
          @JsonKey(name: "survey_id") List<dynamic>? surveyId,
          @JsonKey(name: "question_sequence") int? questionSequence,
          @JsonKey(name: "question_id") List<dynamic>? questionId,
          @JsonKey(name: "result") String? result,
          @JsonKey(name: "page_id") List<dynamic>? pageId}) =
      _$_ReportDetailQuestion;

  factory _ReportDetailQuestion.fromJson(Map<String, dynamic> json) =
      _$_ReportDetailQuestion.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "survey_id")
  List<dynamic>? get surveyId;
  @override
  @JsonKey(name: "question_sequence")
  int? get questionSequence;
  @override
  @JsonKey(name: "question_id")
  List<dynamic>? get questionId;
  @override
  @JsonKey(name: "result")
  String? get result;
  @override
  @JsonKey(name: "page_id")
  List<dynamic>? get pageId;
  @override
  @JsonKey(ignore: true)
  _$ReportDetailQuestionCopyWith<_ReportDetailQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}
