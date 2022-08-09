// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkResult _$$_WorkResultFromJson(Map<String, dynamic> json) =>
    _$_WorkResult(
      workOrder: (json['Work Order'] as List<dynamic>?)
          ?.map((e) => WorkOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['Status'] as bool?,
      msg: json['Msg'] as String?,
    );

Map<String, dynamic> _$$_WorkResultToJson(_$_WorkResult instance) =>
    <String, dynamic>{
      'Work Order': instance.workOrder,
      'Status': instance.status,
      'Msg': instance.msg,
    };

_$_WorkOrder _$$_WorkOrderFromJson(Map<String, dynamic> json) => _$_WorkOrder(
      woId: json['WO ID'] as String?,
      woName: json['WO Name'] as String?,
      openDate: json['Open Date'] == null
          ? null
          : DateTime.parse(json['Open Date'] as String),
      dueDate: json['Due Date'] == null
          ? null
          : DateTime.parse(json['Due Date'] as String),
      previousTrip: json['Previous Trip'] as String?,
      request: json['Request'] as String?,
      assetLocation: json['Asset Location'] as String?,
      assetCategory: json['Asset Category'] as String?,
      assetId: json['Asset ID'] as String?,
      assetName: json['Asset Name'] as String?,
      type: json['Type'] as String?,
      activity: json['Activity'] as String?,
      priority: json['Priority'] as String?,
      teamName: json['Team Name'] as String?,
      userId: json['User ID'] as String?,
      userName: json['User Name'] as String?,
      status: json['Status'] as String?,
      description: json['Description'] as String?,
      asset: json['Asset'] as String?,
      resources: (json['Resources'] as List<dynamic>?)
          ?.map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      reports: (json['Reports'] as List<dynamic>?)
          ?.map((e) => Report.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkOrderToJson(_$_WorkOrder instance) =>
    <String, dynamic>{
      'WO ID': instance.woId,
      'WO Name': instance.woName,
      'Open Date': instance.openDate?.toIso8601String(),
      'Due Date': instance.dueDate?.toIso8601String(),
      'Previous Trip': instance.previousTrip,
      'Request': instance.request,
      'Asset Location': instance.assetLocation,
      'Asset Category': instance.assetCategory,
      'Asset ID': instance.assetId,
      'Asset Name': instance.assetName,
      'Type': instance.type,
      'Activity': instance.activity,
      'Priority': instance.priority,
      'Team Name': instance.teamName,
      'User ID': instance.userId,
      'User Name': instance.userName,
      'Status': instance.status,
      'Description': instance.description,
      'Asset': instance.asset,
      'Resources': instance.resources,
      'Reports': instance.reports,
    };

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      surveyId: json['Survey ID'] as String?,
      reportName: json['Report Name'] as String?,
      sequence: json['Sequence'] as num?,
      addedOn: json['Added On'] == null
          ? null
          : DateTime.parse(json['Added On'] as String),
      duration: json['Duration'] as num?,
      tags: json['Tags'] as String?,
      code: json['Code'] as String?,
      description: json['Description'] as String?,
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'Survey ID': instance.surveyId,
      'Report Name': instance.reportName,
      'Sequence': instance.sequence,
      'Added On': instance.addedOn?.toIso8601String(),
      'Duration': instance.duration,
      'Tags': instance.tags,
      'Code': instance.code,
      'Description': instance.description,
    };

_$_Resource _$$_ResourceFromJson(Map<String, dynamic> json) => _$_Resource(
      name: json['Name'] as String?,
      qty: json['Qty'] as num?,
      uoM: json['UoM'] as String?,
    );

Map<String, dynamic> _$$_ResourceToJson(_$_Resource instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Qty': instance.qty,
      'UoM': instance.uoM,
    };
