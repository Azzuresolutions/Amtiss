// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_assignment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupAssignmentModel _$GroupAssignmentModelFromJson(Map<String, dynamic> json) {
  return _GroupAssignmentModel.fromJson(json);
}

/// @nodoc
class _$GroupAssignmentModelTearOff {
  const _$GroupAssignmentModelTearOff();

  _GroupAssignmentModel call(
      {@JsonKey(name: "amtiss.assignment")
          List<AmtissAssignment>? amtissAssignment,
      @JsonKey(name: "status")
          bool? status,
      @JsonKey(name: "msg")
          String? msg}) {
    return _GroupAssignmentModel(
      amtissAssignment: amtissAssignment,
      status: status,
      msg: msg,
    );
  }

  GroupAssignmentModel fromJson(Map<String, Object?> json) {
    return GroupAssignmentModel.fromJson(json);
  }
}

/// @nodoc
const $GroupAssignmentModel = _$GroupAssignmentModelTearOff();

/// @nodoc
mixin _$GroupAssignmentModel {
  @JsonKey(name: "amtiss.assignment")
  List<AmtissAssignment>? get amtissAssignment =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupAssignmentModelCopyWith<GroupAssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupAssignmentModelCopyWith<$Res> {
  factory $GroupAssignmentModelCopyWith(GroupAssignmentModel value,
          $Res Function(GroupAssignmentModel) then) =
      _$GroupAssignmentModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "amtiss.assignment")
          List<AmtissAssignment>? amtissAssignment,
      @JsonKey(name: "status")
          bool? status,
      @JsonKey(name: "msg")
          String? msg});
}

/// @nodoc
class _$GroupAssignmentModelCopyWithImpl<$Res>
    implements $GroupAssignmentModelCopyWith<$Res> {
  _$GroupAssignmentModelCopyWithImpl(this._value, this._then);

  final GroupAssignmentModel _value;
  // ignore: unused_field
  final $Res Function(GroupAssignmentModel) _then;

  @override
  $Res call({
    Object? amtissAssignment = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      amtissAssignment: amtissAssignment == freezed
          ? _value.amtissAssignment
          : amtissAssignment // ignore: cast_nullable_to_non_nullable
              as List<AmtissAssignment>?,
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
abstract class _$GroupAssignmentModelCopyWith<$Res>
    implements $GroupAssignmentModelCopyWith<$Res> {
  factory _$GroupAssignmentModelCopyWith(_GroupAssignmentModel value,
          $Res Function(_GroupAssignmentModel) then) =
      __$GroupAssignmentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "amtiss.assignment")
          List<AmtissAssignment>? amtissAssignment,
      @JsonKey(name: "status")
          bool? status,
      @JsonKey(name: "msg")
          String? msg});
}

/// @nodoc
class __$GroupAssignmentModelCopyWithImpl<$Res>
    extends _$GroupAssignmentModelCopyWithImpl<$Res>
    implements _$GroupAssignmentModelCopyWith<$Res> {
  __$GroupAssignmentModelCopyWithImpl(
      _GroupAssignmentModel _value, $Res Function(_GroupAssignmentModel) _then)
      : super(_value, (v) => _then(v as _GroupAssignmentModel));

  @override
  _GroupAssignmentModel get _value => super._value as _GroupAssignmentModel;

  @override
  $Res call({
    Object? amtissAssignment = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_GroupAssignmentModel(
      amtissAssignment: amtissAssignment == freezed
          ? _value.amtissAssignment
          : amtissAssignment // ignore: cast_nullable_to_non_nullable
              as List<AmtissAssignment>?,
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
class _$_GroupAssignmentModel implements _GroupAssignmentModel {
  const _$_GroupAssignmentModel(
      {@JsonKey(name: "amtiss.assignment") this.amtissAssignment,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg});

  factory _$_GroupAssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroupAssignmentModelFromJson(json);

  @override
  @JsonKey(name: "amtiss.assignment")
  final List<AmtissAssignment>? amtissAssignment;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;

  @override
  String toString() {
    return 'GroupAssignmentModel(amtissAssignment: $amtissAssignment, status: $status, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GroupAssignmentModel &&
            const DeepCollectionEquality()
                .equals(other.amtissAssignment, amtissAssignment) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(amtissAssignment),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$GroupAssignmentModelCopyWith<_GroupAssignmentModel> get copyWith =>
      __$GroupAssignmentModelCopyWithImpl<_GroupAssignmentModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupAssignmentModelToJson(this);
  }
}

abstract class _GroupAssignmentModel implements GroupAssignmentModel {
  const factory _GroupAssignmentModel(
      {@JsonKey(name: "amtiss.assignment")
          List<AmtissAssignment>? amtissAssignment,
      @JsonKey(name: "status")
          bool? status,
      @JsonKey(name: "msg")
          String? msg}) = _$_GroupAssignmentModel;

  factory _GroupAssignmentModel.fromJson(Map<String, dynamic> json) =
      _$_GroupAssignmentModel.fromJson;

  @override
  @JsonKey(name: "amtiss.assignment")
  List<AmtissAssignment>? get amtissAssignment;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$GroupAssignmentModelCopyWith<_GroupAssignmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AmtissAssignment _$AmtissAssignmentFromJson(Map<String, dynamic> json) {
  return _AmtissAssignment.fromJson(json);
}

/// @nodoc
class _$AmtissAssignmentTearOff {
  const _$AmtissAssignmentTearOff();

  _AmtissAssignment call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "description") String? description}) {
    return _AmtissAssignment(
      id: id,
      locationId: locationId,
      categoryId: categoryId,
      assetId: assetId,
      assignmentDate: assignmentDate,
      dueDate: dueDate,
      maintenanceType: maintenanceType,
      activityId: activityId,
      userGroup: userGroup,
      assignTo: assignTo,
      groupsTo: groupsTo,
      priority: priority,
      description: description,
    );
  }

  AmtissAssignment fromJson(Map<String, Object?> json) {
    return AmtissAssignment.fromJson(json);
  }
}

/// @nodoc
const $AmtissAssignment = _$AmtissAssignmentTearOff();

/// @nodoc
mixin _$AmtissAssignment {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "locationId")
  int? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: "categoryId")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "assetId")
  int? get assetId => throw _privateConstructorUsedError;
  @JsonKey(name: "assignmentDate")
  DateTime? get assignmentDate => throw _privateConstructorUsedError;
  @JsonKey(name: "dueDate")
  DateTime? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "maintenanceType")
  String? get maintenanceType => throw _privateConstructorUsedError;
  @JsonKey(name: "activityId")
  int? get activityId => throw _privateConstructorUsedError;
  @JsonKey(name: "userGroup")
  String? get userGroup => throw _privateConstructorUsedError;
  @JsonKey(name: "assignTo")
  String? get assignTo => throw _privateConstructorUsedError;
  @JsonKey(name: "groupsTo")
  List<int>? get groupsTo => throw _privateConstructorUsedError;
  @JsonKey(name: "priority")
  String? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmtissAssignmentCopyWith<AmtissAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmtissAssignmentCopyWith<$Res> {
  factory $AmtissAssignmentCopyWith(
          AmtissAssignment value, $Res Function(AmtissAssignment) then) =
      _$AmtissAssignmentCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$AmtissAssignmentCopyWithImpl<$Res>
    implements $AmtissAssignmentCopyWith<$Res> {
  _$AmtissAssignmentCopyWithImpl(this._value, this._then);

  final AmtissAssignment _value;
  // ignore: unused_field
  final $Res Function(AmtissAssignment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? locationId = freezed,
    Object? categoryId = freezed,
    Object? assetId = freezed,
    Object? assignmentDate = freezed,
    Object? dueDate = freezed,
    Object? maintenanceType = freezed,
    Object? activityId = freezed,
    Object? userGroup = freezed,
    Object? assignTo = freezed,
    Object? groupsTo = freezed,
    Object? priority = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      assignmentDate: assignmentDate == freezed
          ? _value.assignmentDate
          : assignmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maintenanceType: maintenanceType == freezed
          ? _value.maintenanceType
          : maintenanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: activityId == freezed
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int?,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      assignTo: assignTo == freezed
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      groupsTo: groupsTo == freezed
          ? _value.groupsTo
          : groupsTo // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AmtissAssignmentCopyWith<$Res>
    implements $AmtissAssignmentCopyWith<$Res> {
  factory _$AmtissAssignmentCopyWith(
          _AmtissAssignment value, $Res Function(_AmtissAssignment) then) =
      __$AmtissAssignmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$AmtissAssignmentCopyWithImpl<$Res>
    extends _$AmtissAssignmentCopyWithImpl<$Res>
    implements _$AmtissAssignmentCopyWith<$Res> {
  __$AmtissAssignmentCopyWithImpl(
      _AmtissAssignment _value, $Res Function(_AmtissAssignment) _then)
      : super(_value, (v) => _then(v as _AmtissAssignment));

  @override
  _AmtissAssignment get _value => super._value as _AmtissAssignment;

  @override
  $Res call({
    Object? id = freezed,
    Object? locationId = freezed,
    Object? categoryId = freezed,
    Object? assetId = freezed,
    Object? assignmentDate = freezed,
    Object? dueDate = freezed,
    Object? maintenanceType = freezed,
    Object? activityId = freezed,
    Object? userGroup = freezed,
    Object? assignTo = freezed,
    Object? groupsTo = freezed,
    Object? priority = freezed,
    Object? description = freezed,
  }) {
    return _then(_AmtissAssignment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      locationId: locationId == freezed
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: categoryId == freezed
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      assetId: assetId == freezed
          ? _value.assetId
          : assetId // ignore: cast_nullable_to_non_nullable
              as int?,
      assignmentDate: assignmentDate == freezed
          ? _value.assignmentDate
          : assignmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      maintenanceType: maintenanceType == freezed
          ? _value.maintenanceType
          : maintenanceType // ignore: cast_nullable_to_non_nullable
              as String?,
      activityId: activityId == freezed
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as int?,
      userGroup: userGroup == freezed
          ? _value.userGroup
          : userGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      assignTo: assignTo == freezed
          ? _value.assignTo
          : assignTo // ignore: cast_nullable_to_non_nullable
              as String?,
      groupsTo: groupsTo == freezed
          ? _value.groupsTo
          : groupsTo // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      priority: priority == freezed
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
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
class _$_AmtissAssignment implements _AmtissAssignment {
  const _$_AmtissAssignment(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "locationId") this.locationId,
      @JsonKey(name: "categoryId") this.categoryId,
      @JsonKey(name: "assetId") this.assetId,
      @JsonKey(name: "assignmentDate") this.assignmentDate,
      @JsonKey(name: "dueDate") this.dueDate,
      @JsonKey(name: "maintenanceType") this.maintenanceType,
      @JsonKey(name: "activityId") this.activityId,
      @JsonKey(name: "userGroup") this.userGroup,
      @JsonKey(name: "assignTo") this.assignTo,
      @JsonKey(name: "groupsTo") this.groupsTo,
      @JsonKey(name: "priority") this.priority,
      @JsonKey(name: "description") this.description});

  factory _$_AmtissAssignment.fromJson(Map<String, dynamic> json) =>
      _$$_AmtissAssignmentFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "locationId")
  final int? locationId;
  @override
  @JsonKey(name: "categoryId")
  final int? categoryId;
  @override
  @JsonKey(name: "assetId")
  final int? assetId;
  @override
  @JsonKey(name: "assignmentDate")
  final DateTime? assignmentDate;
  @override
  @JsonKey(name: "dueDate")
  final DateTime? dueDate;
  @override
  @JsonKey(name: "maintenanceType")
  final String? maintenanceType;
  @override
  @JsonKey(name: "activityId")
  final int? activityId;
  @override
  @JsonKey(name: "userGroup")
  final String? userGroup;
  @override
  @JsonKey(name: "assignTo")
  final String? assignTo;
  @override
  @JsonKey(name: "groupsTo")
  final List<int>? groupsTo;
  @override
  @JsonKey(name: "priority")
  final String? priority;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'AmtissAssignment(id: $id, locationId: $locationId, categoryId: $categoryId, assetId: $assetId, assignmentDate: $assignmentDate, dueDate: $dueDate, maintenanceType: $maintenanceType, activityId: $activityId, userGroup: $userGroup, assignTo: $assignTo, groupsTo: $groupsTo, priority: $priority, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AmtissAssignment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.locationId, locationId) &&
            const DeepCollectionEquality()
                .equals(other.categoryId, categoryId) &&
            const DeepCollectionEquality().equals(other.assetId, assetId) &&
            const DeepCollectionEquality()
                .equals(other.assignmentDate, assignmentDate) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality()
                .equals(other.maintenanceType, maintenanceType) &&
            const DeepCollectionEquality()
                .equals(other.activityId, activityId) &&
            const DeepCollectionEquality().equals(other.userGroup, userGroup) &&
            const DeepCollectionEquality().equals(other.assignTo, assignTo) &&
            const DeepCollectionEquality().equals(other.groupsTo, groupsTo) &&
            const DeepCollectionEquality().equals(other.priority, priority) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(locationId),
      const DeepCollectionEquality().hash(categoryId),
      const DeepCollectionEquality().hash(assetId),
      const DeepCollectionEquality().hash(assignmentDate),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(maintenanceType),
      const DeepCollectionEquality().hash(activityId),
      const DeepCollectionEquality().hash(userGroup),
      const DeepCollectionEquality().hash(assignTo),
      const DeepCollectionEquality().hash(groupsTo),
      const DeepCollectionEquality().hash(priority),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$AmtissAssignmentCopyWith<_AmtissAssignment> get copyWith =>
      __$AmtissAssignmentCopyWithImpl<_AmtissAssignment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmtissAssignmentToJson(this);
  }
}

abstract class _AmtissAssignment implements AmtissAssignment {
  const factory _AmtissAssignment(
      {@JsonKey(name: "id") int? id,
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
      @JsonKey(name: "description") String? description}) = _$_AmtissAssignment;

  factory _AmtissAssignment.fromJson(Map<String, dynamic> json) =
      _$_AmtissAssignment.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "locationId")
  int? get locationId;
  @override
  @JsonKey(name: "categoryId")
  int? get categoryId;
  @override
  @JsonKey(name: "assetId")
  int? get assetId;
  @override
  @JsonKey(name: "assignmentDate")
  DateTime? get assignmentDate;
  @override
  @JsonKey(name: "dueDate")
  DateTime? get dueDate;
  @override
  @JsonKey(name: "maintenanceType")
  String? get maintenanceType;
  @override
  @JsonKey(name: "activityId")
  int? get activityId;
  @override
  @JsonKey(name: "userGroup")
  String? get userGroup;
  @override
  @JsonKey(name: "assignTo")
  String? get assignTo;
  @override
  @JsonKey(name: "groupsTo")
  List<int>? get groupsTo;
  @override
  @JsonKey(name: "priority")
  String? get priority;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$AmtissAssignmentCopyWith<_AmtissAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}
