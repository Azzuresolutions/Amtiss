// To parse this JSON data, do
//
//     final workResult = workResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'work_result.freezed.dart';
part 'work_result.g.dart';

List<WorkResult> workResultFromJson(String str) =>
    List<WorkResult>.from(json.decode(str).map((x) => WorkResult.fromJson(x)));

String workResultToJson(List<WorkResult> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class WorkResult with _$WorkResult {
  const factory WorkResult({
    @JsonKey(name: "Work Order")List<WorkOrder>? workOrder,
    @JsonKey(name: "Status")bool? status,
    @JsonKey(name: "Msg")String? msg,
  }) = _WorkResult;

  factory WorkResult.fromJson(Map<String, dynamic> json) =>
      _$WorkResultFromJson(json);
}

@freezed
abstract class WorkOrder with _$WorkOrder {
  const factory WorkOrder({
    @JsonKey(name: "WO ID") String? woId,
    @JsonKey(name: "WO Name") String? woName,
    @JsonKey(name: "Open Date") DateTime? openDate,
    @JsonKey(name: "Due Date") DateTime? dueDate,
    @JsonKey(name: "Previous Trip") String? previousTrip,
    @JsonKey(name: "Request") String? request,
    @JsonKey(name: "Asset Location") String? assetLocation,
    @JsonKey(name: "Asset Category") String? assetCategory,
    @JsonKey(name: "Asset ID") String? assetId,
    @JsonKey(name: "Asset Name") String? assetName,
    @JsonKey(name: "Type") String? type,
    @JsonKey(name: "Activity") String? activity,
    @JsonKey(name: "Priority") String? priority,
    @JsonKey(name: "Team Name") String? teamName,
    @JsonKey(name: "User ID") String? userId,
    @JsonKey(name: "User Name") String? userName,
    @JsonKey(name: "Status") String? status,
    @JsonKey(name: "Description") String? description,
    @JsonKey(name: "Asset") String? asset,
    @JsonKey(name: "Resources") List<Resource>? resources,
    @JsonKey(name: "Reports") List<Report>? reports,
  }) = _WorkOrder;

  factory WorkOrder.fromJson(Map<String, dynamic> json) =>
      _$WorkOrderFromJson(json);
}

@freezed
abstract class Report with _$Report {
  const factory Report({
    @JsonKey(name: "Survey ID") String? surveyId,
    @JsonKey(name: "Report Name") String? reportName,
    @JsonKey(name: "Sequence") num? sequence,
    @JsonKey(name: "Added On") DateTime? addedOn,
    @JsonKey(name: "Duration") num? duration,
    @JsonKey(name: "Tags") String? tags,
    @JsonKey(name: "Code") String? code,
    @JsonKey(name: "Description") String? description,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}

@freezed
abstract class Resource with _$Resource {
  const factory Resource({
    @JsonKey(name: "Name") String? name,
    @JsonKey(name: "Qty") num? qty,
    @JsonKey(name: "UoM") String? uoM,
  }) = _Resource;

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
}
