// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyResult _$$_SurveyResultFromJson(Map<String, dynamic> json) =>
    _$_SurveyResult(
      surveyOrder: (json['Survey_Order'] as List<dynamic>?)
          ?.map((e) => SurveyOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$_SurveyResultToJson(_$_SurveyResult instance) =>
    <String, dynamic>{
      'Survey_Order': instance.surveyOrder,
      'status': instance.status,
      'msg': instance.msg,
    };

_$_SurveyOrder _$$_SurveyOrderFromJson(Map<String, dynamic> json) =>
    _$_SurveyOrder(
      id: json['id'] as int?,
      surveyId: json['survey_id'] as List<dynamic>?,
      state: json['state'] as String?,
      assignmentId: json['assignment_id'] as List<dynamic>?,
      userId: json['user_id'] as List<dynamic>?,
      createDate: json['create_date'] == null
          ? null
          : DateTime.parse(json['create_date'] as String),
      startDatetime: json['start_datetime'] == null
          ? null
          : DateTime.parse(json['start_datetime'] as String),
      endDatetime: json['end_datetime'] == null
          ? null
          : DateTime.parse(json['end_datetime'] as String),
    );

Map<String, dynamic> _$$_SurveyOrderToJson(_$_SurveyOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'survey_id': instance.surveyId,
      'state': instance.state,
      'assignment_id': instance.assignmentId,
      'user_id': instance.userId,
      'create_date': instance.createDate?.toIso8601String(),
      'start_datetime': instance.startDatetime?.toIso8601String(),
      'end_datetime': instance.endDatetime?.toIso8601String(),
    };
