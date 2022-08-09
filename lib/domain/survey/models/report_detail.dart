import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'report_detail.freezed.dart';
part 'report_detail.g.dart';

List<ReportDetail> ReportDetailFromJson(String str) => List<ReportDetail>.from(
    json.decode(str).map((x) => ReportDetail.fromJson(x)));

String ReportDetailToJson(List<ReportDetail> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class ReportDetail with _$ReportDetail {
  const factory ReportDetail({
    @JsonKey(name: "Report_Detail") List<ReportDetailQuestion>? reportDetail,
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "msg") String? msg,
  }) = _ReportDetail;

  factory ReportDetail.fromJson(Map<String, dynamic> json) =>
      _$ReportDetailFromJson(json);
}

@freezed
abstract class ReportDetailQuestion with _$ReportDetailQuestion {
  const factory ReportDetailQuestion({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "survey_id") List<dynamic>? surveyId,
    @JsonKey(name: "question_sequence") int? questionSequence,
    @JsonKey(name: "question_id") List<dynamic>? questionId,
    @JsonKey(name: "result") String? result,
    @JsonKey(name: "page_id") List<dynamic>? pageId,
  }) = _ReportDetailQuestion;

  factory ReportDetailQuestion.fromJson(Map<String, dynamic> json) =>
      _$ReportDetailQuestionFromJson(json);
}
