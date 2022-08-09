import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'survey_result.freezed.dart';
part 'survey_result.g.dart';

List<SurveyResult> surveyResultFromJson(String str) => List<SurveyResult>.from(
    json.decode(str).map((x) => SurveyResult.fromJson(x)));

String surveyResultToJson(List<SurveyResult> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class SurveyResult with _$SurveyResult {
  const factory SurveyResult({
    @JsonKey(name: "Survey_Order") List<SurveyOrder>? surveyOrder,
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "msg") String? msg,
  }) = _SurveyResult;

  factory SurveyResult.fromJson(Map<String, dynamic> json) =>
      _$SurveyResultFromJson(json);
}

@freezed
abstract class SurveyOrder with _$SurveyOrder {
  const factory SurveyOrder({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "survey_id") List<dynamic>? surveyId,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "assignment_id") List<dynamic>? assignmentId,
    @JsonKey(name: "user_id") List<dynamic>? userId,
    @JsonKey(name: "create_date") DateTime? createDate,
    @JsonKey(name: "start_datetime") DateTime? startDatetime,
    @JsonKey(name: "end_datetime") DateTime? endDatetime,
  }) = _SurveyOrder;

  factory SurveyOrder.fromJson(Map<String, dynamic> json) =>
      _$SurveyOrderFromJson(json);
}
