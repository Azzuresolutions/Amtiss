// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkResult _$WorkResultFromJson(Map<String, dynamic> json) {
  return _WorkResult.fromJson(json);
}

/// @nodoc
class _$WorkResultTearOff {
  const _$WorkResultTearOff();

  _WorkResult call(
      {@JsonKey(name: "Work Order") List<WorkOrder>? workOrder,
      @JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Msg") String? msg}) {
    return _WorkResult(
      workOrder: workOrder,
      status: status,
      msg: msg,
    );
  }

  WorkResult fromJson(Map<String, Object?> json) {
    return WorkResult.fromJson(json);
  }
}

/// @nodoc
const $WorkResult = _$WorkResultTearOff();

/// @nodoc
mixin _$WorkResult {
  @JsonKey(name: "Work Order")
  List<WorkOrder>? get workOrder => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Msg")
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkResultCopyWith<WorkResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkResultCopyWith<$Res> {
  factory $WorkResultCopyWith(
          WorkResult value, $Res Function(WorkResult) then) =
      _$WorkResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Work Order") List<WorkOrder>? workOrder,
      @JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Msg") String? msg});
}

/// @nodoc
class _$WorkResultCopyWithImpl<$Res> implements $WorkResultCopyWith<$Res> {
  _$WorkResultCopyWithImpl(this._value, this._then);

  final WorkResult _value;
  // ignore: unused_field
  final $Res Function(WorkResult) _then;

  @override
  $Res call({
    Object? workOrder = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      workOrder: workOrder == freezed
          ? _value.workOrder
          : workOrder // ignore: cast_nullable_to_non_nullable
              as List<WorkOrder>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WorkResultCopyWith<$Res> implements $WorkResultCopyWith<$Res> {
  factory _$WorkResultCopyWith(
          _WorkResult value, $Res Function(_WorkResult) then) =
      __$WorkResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Work Order") List<WorkOrder>? workOrder,
      @JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Msg") String? msg});
}

/// @nodoc
class __$WorkResultCopyWithImpl<$Res> extends _$WorkResultCopyWithImpl<$Res>
    implements _$WorkResultCopyWith<$Res> {
  __$WorkResultCopyWithImpl(
      _WorkResult _value, $Res Function(_WorkResult) _then)
      : super(_value, (v) => _then(v as _WorkResult));

  @override
  _WorkResult get _value => super._value as _WorkResult;

  @override
  $Res call({
    Object? workOrder = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_WorkResult(
      workOrder: workOrder == freezed
          ? _value.workOrder
          : workOrder // ignore: cast_nullable_to_non_nullable
              as List<WorkOrder>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkResult implements _WorkResult {
  const _$_WorkResult(
      {@JsonKey(name: "Work Order") this.workOrder,
      @JsonKey(name: "Status") this.status,
      @JsonKey(name: "Msg") this.msg});

  factory _$_WorkResult.fromJson(Map<String, dynamic> json) =>
      _$$_WorkResultFromJson(json);

  @override
  @JsonKey(name: "Work Order")
  final List<WorkOrder>? workOrder;
  @override
  @JsonKey(name: "Status")
  final bool? status;
  @override
  @JsonKey(name: "Msg")
  final String? msg;

  @override
  String toString() {
    return 'WorkResult(workOrder: $workOrder, status: $status, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkResult &&
            const DeepCollectionEquality().equals(other.workOrder, workOrder) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(workOrder),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$WorkResultCopyWith<_WorkResult> get copyWith =>
      __$WorkResultCopyWithImpl<_WorkResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkResultToJson(this);
  }
}

abstract class _WorkResult implements WorkResult {
  const factory _WorkResult(
      {@JsonKey(name: "Work Order") List<WorkOrder>? workOrder,
      @JsonKey(name: "Status") bool? status,
      @JsonKey(name: "Msg") String? msg}) = _$_WorkResult;

  factory _WorkResult.fromJson(Map<String, dynamic> json) =
      _$_WorkResult.fromJson;

  @override
  @JsonKey(name: "Work Order")
  List<WorkOrder>? get workOrder;
  @override
  @JsonKey(name: "Status")
  bool? get status;
  @override
  @JsonKey(name: "Msg")
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$WorkResultCopyWith<_WorkResult> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkOrder _$WorkOrderFromJson(Map<String, dynamic> json) {
  return _WorkOrder.fromJson(json);
}

/// @nodoc
class _$WorkOrderTearOff {
  const _$WorkOrderTearOff();

  _WorkOrder call(
      {@JsonKey(name: "WO ID") String? woId,
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
      @JsonKey(name: "Reports") List<Report>? reports}) {
    return _WorkOrder(
      woId: woId,
      woName: woName,
      openDate: openDate,
      dueDate: dueDate,
      previousTrip: previousTrip,
      request: request,
      assetLocation: assetLocation,
      assetCategory: assetCategory,
      assetId: assetId,
      assetName: assetName,
      type: type,
      activity: activity,
      priority: priority,
      teamName: teamName,
      userId: userId,
      userName: userName,
      status: status,
      description: description,
      asset: asset,
      resources: resources,
      reports: reports,
    );
  }

  WorkOrder fromJson(Map<String, Object?> json) {
    return WorkOrder.fromJson(json);
  }
}

/// @nodoc
const $WorkOrder = _$WorkOrderTearOff();

/// @nodoc
mixin _$WorkOrder {
  @JsonKey(name: "WO ID")
  String? get woId => throw _privateConstructorUsedError;
  @JsonKey(name: "WO Name")
  String? get woName => throw _privateConstructorUsedError;
  @JsonKey(name: "Open Date")
  DateTime? get openDate => throw _privateConstructorUsedError;
  @JsonKey(name: "Due Date")
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "Previous Trip")
  String? get previousTrip => throw _privateConstructorUsedError;
  @JsonKey(name: "Request")
  String? get request => throw _privateConstructorUsedError;
  @JsonKey(name: "Asset Location")
  String? get assetLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "Asset Category")
  String? get assetCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "Asset ID")
  String? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: "Asset Name")
  String? get assetName => throw _privateConstructorUsedError;
  @JsonKey(name: "Type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "Activity")
  String? get activity => throw _privateConstructorUsedError;
  @JsonKey(name: "Priority")
  String? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "Team Name")
  String? get teamName => throw _privateConstructorUsedError;
  @JsonKey(name: "User ID")
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "User Name")
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "Asset")
  String? get asset => throw _privateConstructorUsedError;
  @JsonKey(name: "Resources")
  List<Resource>? get resources => throw _privateConstructorUsedError;
  @JsonKey(name: "Reports")
  List<Report>? get reports => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkOrderCopyWith<WorkOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkOrderCopyWith<$Res> {
  factory $WorkOrderCopyWith(WorkOrder value, $Res Function(WorkOrder) then) =
      _$WorkOrderCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "WO ID") String? woId,
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
      @JsonKey(name: "Reports") List<Report>? reports});
}

/// @nodoc
class _$WorkOrderCopyWithImpl<$Res> implements $WorkOrderCopyWith<$Res> {
  _$WorkOrderCopyWithImpl(this._value, this._then);

  final WorkOrder _value;
  // ignore: unused_field
  final $Res Function(WorkOrder) _then;

  @override
  $Res call({
    Object? woId = freezed,
    Object? woName = freezed,
    Object? openDate = freezed,
    Object? dueDate = freezed,
    Object? previousTrip = freezed,
    Object? request = freezed,
    Object? assetLocation = freezed,
    Object? assetCategory = freezed,
    Object? assetId = freezed,
    Object? assetName = freezed,
    Object? type = freezed,
    Object? activity = freezed,
    Object? priority = freezed,
    Object? teamName = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? asset = freezed,
    Object? resources = freezed,
    Object? reports = freezed,
  }) {
    return _then(_value.copyWith(
      woId: woId == freezed
          ? _value.woId
          : woId // ignore: cast_nullable_to_non_nullable
              as String?,
      woName: woName == freezed
          ? _value.woName
          : woName // ignore: cast_nullable_to_non_nullable
              as String?,
      openDate: openDate == freezed
          ? _value.openDate
          : openDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      previousTrip: previousTrip == freezed
          ? _value.previousTrip
          : previousTrip // ignore: cast_nullable_to_non_nullable
              as String?,
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String?,
      assetLocation: assetLocation == freezed
          ? _value.assetLocation
          : assetLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      assetCategory: assetCategory == freezed
          ? _value.assetCategory
          : assetCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetName: assetName == freezed
          ? _value.assetName
          : assetName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      teamName: teamName == freezed
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>?,
    ));
  }
}

/// @nodoc
abstract class _$WorkOrderCopyWith<$Res> implements $WorkOrderCopyWith<$Res> {
  factory _$WorkOrderCopyWith(
          _WorkOrder value, $Res Function(_WorkOrder) then) =
      __$WorkOrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "WO ID") String? woId,
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
      @JsonKey(name: "Reports") List<Report>? reports});
}

/// @nodoc
class __$WorkOrderCopyWithImpl<$Res> extends _$WorkOrderCopyWithImpl<$Res>
    implements _$WorkOrderCopyWith<$Res> {
  __$WorkOrderCopyWithImpl(_WorkOrder _value, $Res Function(_WorkOrder) _then)
      : super(_value, (v) => _then(v as _WorkOrder));

  @override
  _WorkOrder get _value => super._value as _WorkOrder;

  @override
  $Res call({
    Object? woId = freezed,
    Object? woName = freezed,
    Object? openDate = freezed,
    Object? dueDate = freezed,
    Object? previousTrip = freezed,
    Object? request = freezed,
    Object? assetLocation = freezed,
    Object? assetCategory = freezed,
    Object? assetId = freezed,
    Object? assetName = freezed,
    Object? type = freezed,
    Object? activity = freezed,
    Object? priority = freezed,
    Object? teamName = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? asset = freezed,
    Object? resources = freezed,
    Object? reports = freezed,
  }) {
    return _then(_WorkOrder(
      woId: woId == freezed
          ? _value.woId
          : woId // ignore: cast_nullable_to_non_nullable
              as String?,
      woName: woName == freezed
          ? _value.woName
          : woName // ignore: cast_nullable_to_non_nullable
              as String?,
      openDate: openDate == freezed
          ? _value.openDate
          : openDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      previousTrip: previousTrip == freezed
          ? _value.previousTrip
          : previousTrip // ignore: cast_nullable_to_non_nullable
              as String?,
      request: request == freezed
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as String?,
      assetLocation: assetLocation == freezed
          ? _value.assetLocation
          : assetLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      assetCategory: assetCategory == freezed
          ? _value.assetCategory
          : assetCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as String?,
      assetName: assetName == freezed
          ? _value.assetName
          : assetName // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      activity: activity == freezed
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      teamName: teamName == freezed
          ? _value.teamName
          : teamName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String?,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<Report>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkOrder implements _WorkOrder {
  const _$_WorkOrder(
      {@JsonKey(name: "WO ID") this.woId,
      @JsonKey(name: "WO Name") this.woName,
      @JsonKey(name: "Open Date") this.openDate,
      @JsonKey(name: "Due Date") this.dueDate,
      @JsonKey(name: "Previous Trip") this.previousTrip,
      @JsonKey(name: "Request") this.request,
      @JsonKey(name: "Asset Location") this.assetLocation,
      @JsonKey(name: "Asset Category") this.assetCategory,
      @JsonKey(name: "Asset ID") this.assetId,
      @JsonKey(name: "Asset Name") this.assetName,
      @JsonKey(name: "Type") this.type,
      @JsonKey(name: "Activity") this.activity,
      @JsonKey(name: "Priority") this.priority,
      @JsonKey(name: "Team Name") this.teamName,
      @JsonKey(name: "User ID") this.userId,
      @JsonKey(name: "User Name") this.userName,
      @JsonKey(name: "Status") this.status,
      @JsonKey(name: "Description") this.description,
      @JsonKey(name: "Asset") this.asset,
      @JsonKey(name: "Resources") this.resources,
      @JsonKey(name: "Reports") this.reports});

  factory _$_WorkOrder.fromJson(Map<String, dynamic> json) =>
      _$$_WorkOrderFromJson(json);

  @override
  @JsonKey(name: "WO ID")
  final String? woId;
  @override
  @JsonKey(name: "WO Name")
  final String? woName;
  @override
  @JsonKey(name: "Open Date")
  final DateTime? openDate;
  @override
  @JsonKey(name: "Due Date")
  final DateTime? dueDate;
  @override
  @JsonKey(name: "Previous Trip")
  final String? previousTrip;
  @override
  @JsonKey(name: "Request")
  final String? request;
  @override
  @JsonKey(name: "Asset Location")
  final String? assetLocation;
  @override
  @JsonKey(name: "Asset Category")
  final String? assetCategory;
  @override
  @JsonKey(name: "Asset ID")
  final String? assetId;
  @override
  @JsonKey(name: "Asset Name")
  final String? assetName;
  @override
  @JsonKey(name: "Type")
  final String? type;
  @override
  @JsonKey(name: "Activity")
  final String? activity;
  @override
  @JsonKey(name: "Priority")
  final String? priority;
  @override
  @JsonKey(name: "Team Name")
  final String? teamName;
  @override
  @JsonKey(name: "User ID")
  final String? userId;
  @override
  @JsonKey(name: "User Name")
  final String? userName;
  @override
  @JsonKey(name: "Status")
  final String? status;
  @override
  @JsonKey(name: "Description")
  final String? description;
  @override
  @JsonKey(name: "Asset")
  final String? asset;
  @override
  @JsonKey(name: "Resources")
  final List<Resource>? resources;
  @override
  @JsonKey(name: "Reports")
  final List<Report>? reports;

  @override
  String toString() {
    return 'WorkOrder(woId: $woId, woName: $woName, openDate: $openDate, dueDate: $dueDate, previousTrip: $previousTrip, request: $request, assetLocation: $assetLocation, assetCategory: $assetCategory, assetId: $assetId, assetName: $assetName, type: $type, activity: $activity, priority: $priority, teamName: $teamName, userId: $userId, userName: $userName, status: $status, description: $description, asset: $asset, resources: $resources, reports: $reports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkOrder &&
            const DeepCollectionEquality().equals(other.woId, woId) &&
            const DeepCollectionEquality().equals(other.woName, woName) &&
            const DeepCollectionEquality().equals(other.openDate, openDate) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality()
                .equals(other.previousTrip, previousTrip) &&
            const DeepCollectionEquality().equals(other.request, request) &&
            const DeepCollectionEquality()
                .equals(other.assetLocation, assetLocation) &&
            const DeepCollectionEquality()
                .equals(other.assetCategory, assetCategory) &&
            const DeepCollectionEquality().equals(other.assetId, assetId) &&
            const DeepCollectionEquality().equals(other.assetName, assetName) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.activity, activity) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality().equals(other.teamName, teamName) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.resources, resources) &&
            const DeepCollectionEquality().equals(other.reports, reports));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(woId),
        const DeepCollectionEquality().hash(woName),
        const DeepCollectionEquality().hash(openDate),
        const DeepCollectionEquality().hash(dueDate),
        const DeepCollectionEquality().hash(previousTrip),
        const DeepCollectionEquality().hash(request),
        const DeepCollectionEquality().hash(assetLocation),
        const DeepCollectionEquality().hash(assetCategory),
        const DeepCollectionEquality().hash(assetId),
        const DeepCollectionEquality().hash(assetName),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(activity),
        const DeepCollectionEquality().hash(priority),
        const DeepCollectionEquality().hash(teamName),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(userName),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(description),
        const DeepCollectionEquality().hash(asset),
        const DeepCollectionEquality().hash(resources),
        const DeepCollectionEquality().hash(reports)
      ]);

  @JsonKey(ignore: true)
  @override
  _$WorkOrderCopyWith<_WorkOrder> get copyWith =>
      __$WorkOrderCopyWithImpl<_WorkOrder>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkOrderToJson(this);
  }
}

abstract class _WorkOrder implements WorkOrder {
  const factory _WorkOrder(
      {@JsonKey(name: "WO ID") String? woId,
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
      @JsonKey(name: "Reports") List<Report>? reports}) = _$_WorkOrder;

  factory _WorkOrder.fromJson(Map<String, dynamic> json) =
      _$_WorkOrder.fromJson;

  @override
  @JsonKey(name: "WO ID")
  String? get woId;
  @override
  @JsonKey(name: "WO Name")
  String? get woName;
  @override
  @JsonKey(name: "Open Date")
  DateTime? get openDate;
  @override
  @JsonKey(name: "Due Date")
  DateTime? get dueDate;
  @override
  @JsonKey(name: "Previous Trip")
  String? get previousTrip;
  @override
  @JsonKey(name: "Request")
  String? get request;
  @override
  @JsonKey(name: "Asset Location")
  String? get assetLocation;
  @override
  @JsonKey(name: "Asset Category")
  String? get assetCategory;
  @override
  @JsonKey(name: "Asset ID")
  String? get assetId;
  @override
  @JsonKey(name: "Asset Name")
  String? get assetName;
  @override
  @JsonKey(name: "Type")
  String? get type;
  @override
  @JsonKey(name: "Activity")
  String? get activity;
  @override
  @JsonKey(name: "Priority")
  String? get priority;
  @override
  @JsonKey(name: "Team Name")
  String? get teamName;
  @override
  @JsonKey(name: "User ID")
  String? get userId;
  @override
  @JsonKey(name: "User Name")
  String? get userName;
  @override
  @JsonKey(name: "Status")
  String? get status;
  @override
  @JsonKey(name: "Description")
  String? get description;
  @override
  @JsonKey(name: "Asset")
  String? get asset;
  @override
  @JsonKey(name: "Resources")
  List<Resource>? get resources;
  @override
  @JsonKey(name: "Reports")
  List<Report>? get reports;
  @override
  @JsonKey(ignore: true)
  _$WorkOrderCopyWith<_WorkOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

Report _$ReportFromJson(Map<String, dynamic> json) {
  return _Report.fromJson(json);
}

/// @nodoc
class _$ReportTearOff {
  const _$ReportTearOff();

  _Report call(
      {@JsonKey(name: "Survey ID") String? surveyId,
      @JsonKey(name: "Report Name") String? reportName,
      @JsonKey(name: "Sequence") num? sequence,
      @JsonKey(name: "Added On") DateTime? addedOn,
      @JsonKey(name: "Duration") num? duration,
      @JsonKey(name: "Tags") String? tags,
      @JsonKey(name: "Code") String? code,
      @JsonKey(name: "Description") String? description}) {
    return _Report(
      surveyId: surveyId,
      reportName: reportName,
      sequence: sequence,
      addedOn: addedOn,
      duration: duration,
      tags: tags,
      code: code,
      description: description,
    );
  }

  Report fromJson(Map<String, Object?> json) {
    return Report.fromJson(json);
  }
}

/// @nodoc
const $Report = _$ReportTearOff();

/// @nodoc
mixin _$Report {
  @JsonKey(name: "Survey ID")
  String? get surveyId => throw _privateConstructorUsedError;
  @JsonKey(name: "Report Name")
  String? get reportName => throw _privateConstructorUsedError;
  @JsonKey(name: "Sequence")
  num? get sequence => throw _privateConstructorUsedError;
  @JsonKey(name: "Added On")
  DateTime? get addedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "Duration")
  num? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "Tags")
  String? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "Code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "Description")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportCopyWith<Report> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportCopyWith<$Res> {
  factory $ReportCopyWith(Report value, $Res Function(Report) then) =
      _$ReportCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Survey ID") String? surveyId,
      @JsonKey(name: "Report Name") String? reportName,
      @JsonKey(name: "Sequence") num? sequence,
      @JsonKey(name: "Added On") DateTime? addedOn,
      @JsonKey(name: "Duration") num? duration,
      @JsonKey(name: "Tags") String? tags,
      @JsonKey(name: "Code") String? code,
      @JsonKey(name: "Description") String? description});
}

/// @nodoc
class _$ReportCopyWithImpl<$Res> implements $ReportCopyWith<$Res> {
  _$ReportCopyWithImpl(this._value, this._then);

  final Report _value;
  // ignore: unused_field
  final $Res Function(Report) _then;

  @override
  $Res call({
    Object? surveyId = freezed,
    Object? reportName = freezed,
    Object? sequence = freezed,
    Object? addedOn = freezed,
    Object? duration = freezed,
    Object? tags = freezed,
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
      reportName: reportName == freezed
          ? _value.reportName
          : reportName // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as num?,
      addedOn: addedOn == freezed
          ? _value.addedOn
          : addedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReportCopyWith<$Res> implements $ReportCopyWith<$Res> {
  factory _$ReportCopyWith(_Report value, $Res Function(_Report) then) =
      __$ReportCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Survey ID") String? surveyId,
      @JsonKey(name: "Report Name") String? reportName,
      @JsonKey(name: "Sequence") num? sequence,
      @JsonKey(name: "Added On") DateTime? addedOn,
      @JsonKey(name: "Duration") num? duration,
      @JsonKey(name: "Tags") String? tags,
      @JsonKey(name: "Code") String? code,
      @JsonKey(name: "Description") String? description});
}

/// @nodoc
class __$ReportCopyWithImpl<$Res> extends _$ReportCopyWithImpl<$Res>
    implements _$ReportCopyWith<$Res> {
  __$ReportCopyWithImpl(_Report _value, $Res Function(_Report) _then)
      : super(_value, (v) => _then(v as _Report));

  @override
  _Report get _value => super._value as _Report;

  @override
  $Res call({
    Object? surveyId = freezed,
    Object? reportName = freezed,
    Object? sequence = freezed,
    Object? addedOn = freezed,
    Object? duration = freezed,
    Object? tags = freezed,
    Object? code = freezed,
    Object? description = freezed,
  }) {
    return _then(_Report(
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String?,
      reportName: reportName == freezed
          ? _value.reportName
          : reportName // ignore: cast_nullable_to_non_nullable
              as String?,
      sequence: sequence == freezed
          ? _value.sequence
          : sequence // ignore: cast_nullable_to_non_nullable
              as num?,
      addedOn: addedOn == freezed
          ? _value.addedOn
          : addedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as num?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Report implements _Report {
  const _$_Report(
      {@JsonKey(name: "Survey ID") this.surveyId,
      @JsonKey(name: "Report Name") this.reportName,
      @JsonKey(name: "Sequence") this.sequence,
      @JsonKey(name: "Added On") this.addedOn,
      @JsonKey(name: "Duration") this.duration,
      @JsonKey(name: "Tags") this.tags,
      @JsonKey(name: "Code") this.code,
      @JsonKey(name: "Description") this.description});

  factory _$_Report.fromJson(Map<String, dynamic> json) =>
      _$$_ReportFromJson(json);

  @override
  @JsonKey(name: "Survey ID")
  final String? surveyId;
  @override
  @JsonKey(name: "Report Name")
  final String? reportName;
  @override
  @JsonKey(name: "Sequence")
  final num? sequence;
  @override
  @JsonKey(name: "Added On")
  final DateTime? addedOn;
  @override
  @JsonKey(name: "Duration")
  final num? duration;
  @override
  @JsonKey(name: "Tags")
  final String? tags;
  @override
  @JsonKey(name: "Code")
  final String? code;
  @override
  @JsonKey(name: "Description")
  final String? description;

  @override
  String toString() {
    return 'Report(surveyId: $surveyId, reportName: $reportName, sequence: $sequence, addedOn: $addedOn, duration: $duration, tags: $tags, code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Report &&
            const DeepCollectionEquality().equals(other.surveyId, surveyId) &&
            const DeepCollectionEquality()
                .equals(other.reportName, reportName) &&
            const DeepCollectionEquality().equals(other.sequence, sequence) &&
            const DeepCollectionEquality().equals(other.addedOn, addedOn) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(surveyId),
      const DeepCollectionEquality().hash(reportName),
      const DeepCollectionEquality().hash(sequence),
      const DeepCollectionEquality().hash(addedOn),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$ReportCopyWith<_Report> get copyWith =>
      __$ReportCopyWithImpl<_Report>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportToJson(this);
  }
}

abstract class _Report implements Report {
  const factory _Report(
      {@JsonKey(name: "Survey ID") String? surveyId,
      @JsonKey(name: "Report Name") String? reportName,
      @JsonKey(name: "Sequence") num? sequence,
      @JsonKey(name: "Added On") DateTime? addedOn,
      @JsonKey(name: "Duration") num? duration,
      @JsonKey(name: "Tags") String? tags,
      @JsonKey(name: "Code") String? code,
      @JsonKey(name: "Description") String? description}) = _$_Report;

  factory _Report.fromJson(Map<String, dynamic> json) = _$_Report.fromJson;

  @override
  @JsonKey(name: "Survey ID")
  String? get surveyId;
  @override
  @JsonKey(name: "Report Name")
  String? get reportName;
  @override
  @JsonKey(name: "Sequence")
  num? get sequence;
  @override
  @JsonKey(name: "Added On")
  DateTime? get addedOn;
  @override
  @JsonKey(name: "Duration")
  num? get duration;
  @override
  @JsonKey(name: "Tags")
  String? get tags;
  @override
  @JsonKey(name: "Code")
  String? get code;
  @override
  @JsonKey(name: "Description")
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$ReportCopyWith<_Report> get copyWith => throw _privateConstructorUsedError;
}

Resource _$ResourceFromJson(Map<String, dynamic> json) {
  return _Resource.fromJson(json);
}

/// @nodoc
class _$ResourceTearOff {
  const _$ResourceTearOff();

  _Resource call(
      {@JsonKey(name: "Name") String? name,
      @JsonKey(name: "Qty") num? qty,
      @JsonKey(name: "UoM") String? uoM}) {
    return _Resource(
      name: name,
      qty: qty,
      uoM: uoM,
    );
  }

  Resource fromJson(Map<String, Object?> json) {
    return Resource.fromJson(json);
  }
}

/// @nodoc
const $Resource = _$ResourceTearOff();

/// @nodoc
mixin _$Resource {
  @JsonKey(name: "Name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "Qty")
  num? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: "UoM")
  String? get uoM => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceCopyWith<Resource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceCopyWith<$Res> {
  factory $ResourceCopyWith(Resource value, $Res Function(Resource) then) =
      _$ResourceCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Name") String? name,
      @JsonKey(name: "Qty") num? qty,
      @JsonKey(name: "UoM") String? uoM});
}

/// @nodoc
class _$ResourceCopyWithImpl<$Res> implements $ResourceCopyWith<$Res> {
  _$ResourceCopyWithImpl(this._value, this._then);

  final Resource _value;
  // ignore: unused_field
  final $Res Function(Resource) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? qty = freezed,
    Object? uoM = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num?,
      uoM: uoM == freezed
          ? _value.uoM
          : uoM // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ResourceCopyWith<$Res> implements $ResourceCopyWith<$Res> {
  factory _$ResourceCopyWith(_Resource value, $Res Function(_Resource) then) =
      __$ResourceCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Name") String? name,
      @JsonKey(name: "Qty") num? qty,
      @JsonKey(name: "UoM") String? uoM});
}

/// @nodoc
class __$ResourceCopyWithImpl<$Res> extends _$ResourceCopyWithImpl<$Res>
    implements _$ResourceCopyWith<$Res> {
  __$ResourceCopyWithImpl(_Resource _value, $Res Function(_Resource) _then)
      : super(_value, (v) => _then(v as _Resource));

  @override
  _Resource get _value => super._value as _Resource;

  @override
  $Res call({
    Object? name = freezed,
    Object? qty = freezed,
    Object? uoM = freezed,
  }) {
    return _then(_Resource(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as num?,
      uoM: uoM == freezed
          ? _value.uoM
          : uoM // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Resource implements _Resource {
  const _$_Resource(
      {@JsonKey(name: "Name") this.name,
      @JsonKey(name: "Qty") this.qty,
      @JsonKey(name: "UoM") this.uoM});

  factory _$_Resource.fromJson(Map<String, dynamic> json) =>
      _$$_ResourceFromJson(json);

  @override
  @JsonKey(name: "Name")
  final String? name;
  @override
  @JsonKey(name: "Qty")
  final num? qty;
  @override
  @JsonKey(name: "UoM")
  final String? uoM;

  @override
  String toString() {
    return 'Resource(name: $name, qty: $qty, uoM: $uoM)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Resource &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.uoM, uoM));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(uoM));

  @JsonKey(ignore: true)
  @override
  _$ResourceCopyWith<_Resource> get copyWith =>
      __$ResourceCopyWithImpl<_Resource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourceToJson(this);
  }
}

abstract class _Resource implements Resource {
  const factory _Resource(
      {@JsonKey(name: "Name") String? name,
      @JsonKey(name: "Qty") num? qty,
      @JsonKey(name: "UoM") String? uoM}) = _$_Resource;

  factory _Resource.fromJson(Map<String, dynamic> json) = _$_Resource.fromJson;

  @override
  @JsonKey(name: "Name")
  String? get name;
  @override
  @JsonKey(name: "Qty")
  num? get qty;
  @override
  @JsonKey(name: "UoM")
  String? get uoM;
  @override
  @JsonKey(ignore: true)
  _$ResourceCopyWith<_Resource> get copyWith =>
      throw _privateConstructorUsedError;
}
