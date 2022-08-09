// To parse this JSON data, do
//
//     final reportModel = reportModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

ReportModel reportModelFromJson(String str) => ReportModel.fromJson(json.decode(str));

String reportModelToJson(ReportModel data) => json.encode(data.toJson());

@freezed
abstract class ReportModel with _$ReportModel {
  const factory ReportModel({
    @JsonKey(name: "items") List<ReportSurvey>? reports,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) => _$ReportModelFromJson(json);
}

@freezed
abstract class ReportSurvey with _$ReportSurvey {
  const factory ReportSurvey({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "code") String? code,
  }) = _ReportSurvey;

  factory ReportSurvey.fromJson(Map<String, dynamic> json) => _$ReportSurveyFromJson(json);
}
