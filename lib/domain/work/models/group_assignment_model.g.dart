// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_assignment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupAssignmentModel _$$_GroupAssignmentModelFromJson(
        Map<String, dynamic> json) =>
    _$_GroupAssignmentModel(
      amtissAssignment: (json['amtiss.assignment'] as List<dynamic>?)
          ?.map((e) => AmtissAssignment.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$_GroupAssignmentModelToJson(
        _$_GroupAssignmentModel instance) =>
    <String, dynamic>{
      'amtiss.assignment': instance.amtissAssignment,
      'status': instance.status,
      'msg': instance.msg,
    };

_$_AmtissAssignment _$$_AmtissAssignmentFromJson(Map<String, dynamic> json) =>
    _$_AmtissAssignment(
      id: json['id'] as int?,
      locationId: json['locationId'] as int?,
      categoryId: json['categoryId'] as int?,
      assetId: json['assetId'] as int?,
      assignmentDate: json['assignmentDate'] == null
          ? null
          : DateTime.parse(json['assignmentDate'] as String),
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      maintenanceType: json['maintenanceType'] as String?,
      activityId: json['activityId'] as int?,
      userGroup: json['userGroup'] as String?,
      assignTo: json['assignTo'] as String?,
      groupsTo:
          (json['groupsTo'] as List<dynamic>?)?.map((e) => e as int).toList(),
      priority: json['priority'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_AmtissAssignmentToJson(_$_AmtissAssignment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'categoryId': instance.categoryId,
      'assetId': instance.assetId,
      'assignmentDate': instance.assignmentDate?.toIso8601String(),
      'dueDate': instance.dueDate?.toIso8601String(),
      'maintenanceType': instance.maintenanceType,
      'activityId': instance.activityId,
      'userGroup': instance.userGroup,
      'assignTo': instance.assignTo,
      'groupsTo': instance.groupsTo,
      'priority': instance.priority,
      'description': instance.description,
    };
