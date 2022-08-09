// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportModel _$$_ReportModelFromJson(Map<String, dynamic> json) =>
    _$_ReportModel(
      reports: (json['items'] as List<dynamic>?)
          ?.map((e) => ReportSurvey.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ReportModelToJson(_$_ReportModel instance) =>
    <String, dynamic>{
      'items': instance.reports,
    };

_$_ReportSurvey _$$_ReportSurveyFromJson(Map<String, dynamic> json) =>
    _$_ReportSurvey(
      id: json['id'] as int?,
      title: json['title'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_ReportSurveyToJson(_$_ReportSurvey instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'code': instance.code,
    };
