// To parse this JSON data, do
//
//     final groupAssignmentModel = groupAssignmentModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'group_assignment_model.freezed.dart';
part 'group_assignment_model.g.dart';

List<GroupAssignmentModel> groupAssignmentModelFromJson(String str) => List<GroupAssignmentModel>.from(json.decode(str).map((x) => GroupAssignmentModel.fromJson(x)));

String groupAssignmentModelToJson(List<GroupAssignmentModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class GroupAssignmentModel with _$GroupAssignmentModel {
  const factory GroupAssignmentModel({
    @JsonKey(name: "amtiss.assignment") List<AmtissAssignment>? amtissAssignment,
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "msg") String? msg,
  }) = _GroupAssignmentModel;

  factory GroupAssignmentModel.fromJson(Map<String, dynamic> json) => _$GroupAssignmentModelFromJson(json);
}

@freezed
abstract class AmtissAssignment with _$AmtissAssignment {
  const factory AmtissAssignment({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "locationId") int? locationId,
    @JsonKey(name: "categoryId") int? categoryId,
    @JsonKey(name: "assetId") int? assetId,
    @JsonKey(name: "assignmentDate") DateTime? assignmentDate,
    @JsonKey(name: "dueDate") DateTime? dueDate,
    @JsonKey(name: "maintenanceType") String? maintenanceType,
    @JsonKey(name: "activityId") int? activityId,
    @JsonKey(name: "userGroup") String? userGroup,
    @JsonKey(name: "assignTo") String? assignTo,
    @JsonKey(name: "groupsTo") List<int>? groupsTo,
    @JsonKey(name: "priority") String? priority,
    @JsonKey(name: "description") String? description,
  }) = _AmtissAssignment;

  factory AmtissAssignment.fromJson(Map<String, dynamic> json) => _$AmtissAssignmentFromJson(json);
}
