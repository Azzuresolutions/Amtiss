// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportDetail _$$_ReportDetailFromJson(Map<String, dynamic> json) =>
    _$_ReportDetail(
      reportDetail: (json['Report_Detail'] as List<dynamic>?)
          ?.map((e) => ReportDetailQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$_ReportDetailToJson(_$_ReportDetail instance) =>
    <String, dynamic>{
      'Report_Detail': instance.reportDetail,
      'status': instance.status,
      'msg': instance.msg,
    };

_$_ReportDetailQuestion _$$_ReportDetailQuestionFromJson(
        Map<String, dynamic> json) =>
    _$_ReportDetailQuestion(
      id: json['id'] as int?,
      surveyId: json['survey_id'] as List<dynamic>?,
      questionSequence: json['question_sequence'] as int?,
      questionId: json['question_id'] as List<dynamic>?,
      result: json['result'] as String?,
      pageId: json['page_id'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_ReportDetailQuestionToJson(
        _$_ReportDetailQuestion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'survey_id': instance.surveyId,
      'question_sequence': instance.questionSequence,
      'question_id': instance.questionId,
      'result': instance.result,
      'page_id': instance.pageId,
    };
