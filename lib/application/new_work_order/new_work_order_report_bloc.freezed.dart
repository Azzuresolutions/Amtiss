// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_work_order_report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewWorkOrderReportEventTearOff {
  const _$NewWorkOrderReportEventTearOff();

  _Started started(String initialStatus) {
    return _Started(
      initialStatus,
    );
  }

  _GetReports getReports() {
    return const _GetReports();
  }

  _ReportSelect onReportSelect(ReportSurvey reportSurvey) {
    return _ReportSelect(
      reportSurvey,
    );
  }

  _ReportAdd onReportAdd(ReportSurvey reportSurvey) {
    return _ReportAdd(
      reportSurvey,
    );
  }

  _ReportRemove onReportRemove(ReportSurvey reportSurvey) {
    return _ReportRemove(
      reportSurvey,
    );
  }

  _ReportsSubmit onReportsSubmit(String assignmentId) {
    return _ReportsSubmit(
      assignmentId,
    );
  }

  _ClearReportForm onClearReportForm() {
    return const _ClearReportForm();
  }
}

/// @nodoc
const $NewWorkOrderReportEvent = _$NewWorkOrderReportEventTearOff();

/// @nodoc
mixin _$NewWorkOrderReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewWorkOrderReportEventCopyWith<$Res> {
  factory $NewWorkOrderReportEventCopyWith(NewWorkOrderReportEvent value,
          $Res Function(NewWorkOrderReportEvent) then) =
      _$NewWorkOrderReportEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements $NewWorkOrderReportEventCopyWith<$Res> {
  _$NewWorkOrderReportEventCopyWithImpl(this._value, this._then);

  final NewWorkOrderReportEvent _value;
  // ignore: unused_field
  final $Res Function(NewWorkOrderReportEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({String initialStatus});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? initialStatus = freezed,
  }) {
    return _then(_Started(
      initialStatus == freezed
          ? _value.initialStatus
          : initialStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.initialStatus);

  @override
  final String initialStatus;

  @override
  String toString() {
    return 'NewWorkOrderReportEvent.started(initialStatus: $initialStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            const DeepCollectionEquality()
                .equals(other.initialStatus, initialStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialStatus));

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) {
    return started(initialStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) {
    return started?.call(initialStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(initialStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NewWorkOrderReportEvent {
  const factory _Started(String initialStatus) = _$_Started;

  String get initialStatus;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetReportsCopyWith<$Res> {
  factory _$GetReportsCopyWith(
          _GetReports value, $Res Function(_GetReports) then) =
      __$GetReportsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetReportsCopyWithImpl<$Res>
    extends _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements _$GetReportsCopyWith<$Res> {
  __$GetReportsCopyWithImpl(
      _GetReports _value, $Res Function(_GetReports) _then)
      : super(_value, (v) => _then(v as _GetReports));

  @override
  _GetReports get _value => super._value as _GetReports;
}

/// @nodoc

class _$_GetReports implements _GetReports {
  const _$_GetReports();

  @override
  String toString() {
    return 'NewWorkOrderReportEvent.getReports()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetReports);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) {
    return getReports();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) {
    return getReports?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) {
    if (getReports != null) {
      return getReports();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) {
    return getReports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) {
    return getReports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) {
    if (getReports != null) {
      return getReports(this);
    }
    return orElse();
  }
}

abstract class _GetReports implements NewWorkOrderReportEvent {
  const factory _GetReports() = _$_GetReports;
}

/// @nodoc
abstract class _$ReportSelectCopyWith<$Res> {
  factory _$ReportSelectCopyWith(
          _ReportSelect value, $Res Function(_ReportSelect) then) =
      __$ReportSelectCopyWithImpl<$Res>;
  $Res call({ReportSurvey reportSurvey});

  $ReportSurveyCopyWith<$Res> get reportSurvey;
}

/// @nodoc
class __$ReportSelectCopyWithImpl<$Res>
    extends _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements _$ReportSelectCopyWith<$Res> {
  __$ReportSelectCopyWithImpl(
      _ReportSelect _value, $Res Function(_ReportSelect) _then)
      : super(_value, (v) => _then(v as _ReportSelect));

  @override
  _ReportSelect get _value => super._value as _ReportSelect;

  @override
  $Res call({
    Object? reportSurvey = freezed,
  }) {
    return _then(_ReportSelect(
      reportSurvey == freezed
          ? _value.reportSurvey
          : reportSurvey // ignore: cast_nullable_to_non_nullable
              as ReportSurvey,
    ));
  }

  @override
  $ReportSurveyCopyWith<$Res> get reportSurvey {
    return $ReportSurveyCopyWith<$Res>(_value.reportSurvey, (value) {
      return _then(_value.copyWith(reportSurvey: value));
    });
  }
}

/// @nodoc

class _$_ReportSelect implements _ReportSelect {
  const _$_ReportSelect(this.reportSurvey);

  @override
  final ReportSurvey reportSurvey;

  @override
  String toString() {
    return 'NewWorkOrderReportEvent.onReportSelect(reportSurvey: $reportSurvey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportSelect &&
            const DeepCollectionEquality()
                .equals(other.reportSurvey, reportSurvey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(reportSurvey));

  @JsonKey(ignore: true)
  @override
  _$ReportSelectCopyWith<_ReportSelect> get copyWith =>
      __$ReportSelectCopyWithImpl<_ReportSelect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) {
    return onReportSelect(reportSurvey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) {
    return onReportSelect?.call(reportSurvey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportSelect != null) {
      return onReportSelect(reportSurvey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) {
    return onReportSelect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) {
    return onReportSelect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportSelect != null) {
      return onReportSelect(this);
    }
    return orElse();
  }
}

abstract class _ReportSelect implements NewWorkOrderReportEvent {
  const factory _ReportSelect(ReportSurvey reportSurvey) = _$_ReportSelect;

  ReportSurvey get reportSurvey;
  @JsonKey(ignore: true)
  _$ReportSelectCopyWith<_ReportSelect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReportAddCopyWith<$Res> {
  factory _$ReportAddCopyWith(
          _ReportAdd value, $Res Function(_ReportAdd) then) =
      __$ReportAddCopyWithImpl<$Res>;
  $Res call({ReportSurvey reportSurvey});

  $ReportSurveyCopyWith<$Res> get reportSurvey;
}

/// @nodoc
class __$ReportAddCopyWithImpl<$Res>
    extends _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements _$ReportAddCopyWith<$Res> {
  __$ReportAddCopyWithImpl(_ReportAdd _value, $Res Function(_ReportAdd) _then)
      : super(_value, (v) => _then(v as _ReportAdd));

  @override
  _ReportAdd get _value => super._value as _ReportAdd;

  @override
  $Res call({
    Object? reportSurvey = freezed,
  }) {
    return _then(_ReportAdd(
      reportSurvey == freezed
          ? _value.reportSurvey
          : reportSurvey // ignore: cast_nullable_to_non_nullable
              as ReportSurvey,
    ));
  }

  @override
  $ReportSurveyCopyWith<$Res> get reportSurvey {
    return $ReportSurveyCopyWith<$Res>(_value.reportSurvey, (value) {
      return _then(_value.copyWith(reportSurvey: value));
    });
  }
}

/// @nodoc

class _$_ReportAdd implements _ReportAdd {
  const _$_ReportAdd(this.reportSurvey);

  @override
  final ReportSurvey reportSurvey;

  @override
  String toString() {
    return 'NewWorkOrderReportEvent.onReportAdd(reportSurvey: $reportSurvey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportAdd &&
            const DeepCollectionEquality()
                .equals(other.reportSurvey, reportSurvey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(reportSurvey));

  @JsonKey(ignore: true)
  @override
  _$ReportAddCopyWith<_ReportAdd> get copyWith =>
      __$ReportAddCopyWithImpl<_ReportAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) {
    return onReportAdd(reportSurvey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) {
    return onReportAdd?.call(reportSurvey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportAdd != null) {
      return onReportAdd(reportSurvey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) {
    return onReportAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) {
    return onReportAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportAdd != null) {
      return onReportAdd(this);
    }
    return orElse();
  }
}

abstract class _ReportAdd implements NewWorkOrderReportEvent {
  const factory _ReportAdd(ReportSurvey reportSurvey) = _$_ReportAdd;

  ReportSurvey get reportSurvey;
  @JsonKey(ignore: true)
  _$ReportAddCopyWith<_ReportAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReportRemoveCopyWith<$Res> {
  factory _$ReportRemoveCopyWith(
          _ReportRemove value, $Res Function(_ReportRemove) then) =
      __$ReportRemoveCopyWithImpl<$Res>;
  $Res call({ReportSurvey reportSurvey});

  $ReportSurveyCopyWith<$Res> get reportSurvey;
}

/// @nodoc
class __$ReportRemoveCopyWithImpl<$Res>
    extends _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements _$ReportRemoveCopyWith<$Res> {
  __$ReportRemoveCopyWithImpl(
      _ReportRemove _value, $Res Function(_ReportRemove) _then)
      : super(_value, (v) => _then(v as _ReportRemove));

  @override
  _ReportRemove get _value => super._value as _ReportRemove;

  @override
  $Res call({
    Object? reportSurvey = freezed,
  }) {
    return _then(_ReportRemove(
      reportSurvey == freezed
          ? _value.reportSurvey
          : reportSurvey // ignore: cast_nullable_to_non_nullable
              as ReportSurvey,
    ));
  }

  @override
  $ReportSurveyCopyWith<$Res> get reportSurvey {
    return $ReportSurveyCopyWith<$Res>(_value.reportSurvey, (value) {
      return _then(_value.copyWith(reportSurvey: value));
    });
  }
}

/// @nodoc

class _$_ReportRemove implements _ReportRemove {
  const _$_ReportRemove(this.reportSurvey);

  @override
  final ReportSurvey reportSurvey;

  @override
  String toString() {
    return 'NewWorkOrderReportEvent.onReportRemove(reportSurvey: $reportSurvey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportRemove &&
            const DeepCollectionEquality()
                .equals(other.reportSurvey, reportSurvey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(reportSurvey));

  @JsonKey(ignore: true)
  @override
  _$ReportRemoveCopyWith<_ReportRemove> get copyWith =>
      __$ReportRemoveCopyWithImpl<_ReportRemove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) {
    return onReportRemove(reportSurvey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) {
    return onReportRemove?.call(reportSurvey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportRemove != null) {
      return onReportRemove(reportSurvey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) {
    return onReportRemove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) {
    return onReportRemove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportRemove != null) {
      return onReportRemove(this);
    }
    return orElse();
  }
}

abstract class _ReportRemove implements NewWorkOrderReportEvent {
  const factory _ReportRemove(ReportSurvey reportSurvey) = _$_ReportRemove;

  ReportSurvey get reportSurvey;
  @JsonKey(ignore: true)
  _$ReportRemoveCopyWith<_ReportRemove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReportsSubmitCopyWith<$Res> {
  factory _$ReportsSubmitCopyWith(
          _ReportsSubmit value, $Res Function(_ReportsSubmit) then) =
      __$ReportsSubmitCopyWithImpl<$Res>;
  $Res call({String assignmentId});
}

/// @nodoc
class __$ReportsSubmitCopyWithImpl<$Res>
    extends _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements _$ReportsSubmitCopyWith<$Res> {
  __$ReportsSubmitCopyWithImpl(
      _ReportsSubmit _value, $Res Function(_ReportsSubmit) _then)
      : super(_value, (v) => _then(v as _ReportsSubmit));

  @override
  _ReportsSubmit get _value => super._value as _ReportsSubmit;

  @override
  $Res call({
    Object? assignmentId = freezed,
  }) {
    return _then(_ReportsSubmit(
      assignmentId == freezed
          ? _value.assignmentId
          : assignmentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReportsSubmit implements _ReportsSubmit {
  const _$_ReportsSubmit(this.assignmentId);

  @override
  final String assignmentId;

  @override
  String toString() {
    return 'NewWorkOrderReportEvent.onReportsSubmit(assignmentId: $assignmentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportsSubmit &&
            const DeepCollectionEquality()
                .equals(other.assignmentId, assignmentId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(assignmentId));

  @JsonKey(ignore: true)
  @override
  _$ReportsSubmitCopyWith<_ReportsSubmit> get copyWith =>
      __$ReportsSubmitCopyWithImpl<_ReportsSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) {
    return onReportsSubmit(assignmentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) {
    return onReportsSubmit?.call(assignmentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportsSubmit != null) {
      return onReportsSubmit(assignmentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) {
    return onReportsSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) {
    return onReportsSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onReportsSubmit != null) {
      return onReportsSubmit(this);
    }
    return orElse();
  }
}

abstract class _ReportsSubmit implements NewWorkOrderReportEvent {
  const factory _ReportsSubmit(String assignmentId) = _$_ReportsSubmit;

  String get assignmentId;
  @JsonKey(ignore: true)
  _$ReportsSubmitCopyWith<_ReportsSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClearReportFormCopyWith<$Res> {
  factory _$ClearReportFormCopyWith(
          _ClearReportForm value, $Res Function(_ClearReportForm) then) =
      __$ClearReportFormCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearReportFormCopyWithImpl<$Res>
    extends _$NewWorkOrderReportEventCopyWithImpl<$Res>
    implements _$ClearReportFormCopyWith<$Res> {
  __$ClearReportFormCopyWithImpl(
      _ClearReportForm _value, $Res Function(_ClearReportForm) _then)
      : super(_value, (v) => _then(v as _ClearReportForm));

  @override
  _ClearReportForm get _value => super._value as _ClearReportForm;
}

/// @nodoc

class _$_ClearReportForm implements _ClearReportForm {
  const _$_ClearReportForm();

  @override
  String toString() {
    return 'NewWorkOrderReportEvent.onClearReportForm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearReportForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String initialStatus) started,
    required TResult Function() getReports,
    required TResult Function(ReportSurvey reportSurvey) onReportSelect,
    required TResult Function(ReportSurvey reportSurvey) onReportAdd,
    required TResult Function(ReportSurvey reportSurvey) onReportRemove,
    required TResult Function(String assignmentId) onReportsSubmit,
    required TResult Function() onClearReportForm,
  }) {
    return onClearReportForm();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
  }) {
    return onClearReportForm?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String initialStatus)? started,
    TResult Function()? getReports,
    TResult Function(ReportSurvey reportSurvey)? onReportSelect,
    TResult Function(ReportSurvey reportSurvey)? onReportAdd,
    TResult Function(ReportSurvey reportSurvey)? onReportRemove,
    TResult Function(String assignmentId)? onReportsSubmit,
    TResult Function()? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onClearReportForm != null) {
      return onClearReportForm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetReports value) getReports,
    required TResult Function(_ReportSelect value) onReportSelect,
    required TResult Function(_ReportAdd value) onReportAdd,
    required TResult Function(_ReportRemove value) onReportRemove,
    required TResult Function(_ReportsSubmit value) onReportsSubmit,
    required TResult Function(_ClearReportForm value) onClearReportForm,
  }) {
    return onClearReportForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
  }) {
    return onClearReportForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetReports value)? getReports,
    TResult Function(_ReportSelect value)? onReportSelect,
    TResult Function(_ReportAdd value)? onReportAdd,
    TResult Function(_ReportRemove value)? onReportRemove,
    TResult Function(_ReportsSubmit value)? onReportsSubmit,
    TResult Function(_ClearReportForm value)? onClearReportForm,
    required TResult orElse(),
  }) {
    if (onClearReportForm != null) {
      return onClearReportForm(this);
    }
    return orElse();
  }
}

abstract class _ClearReportForm implements NewWorkOrderReportEvent {
  const factory _ClearReportForm() = _$_ClearReportForm;
}

/// @nodoc
class _$NewWorkOrderReportStateTearOff {
  const _$NewWorkOrderReportStateTearOff();

  _NewWorkOrderReportState call(
      {required ResultState state,
      required List<ReportSurvey> reports,
      required List<ReportSurvey> addedReports,
      required ReportSurvey selectedReports}) {
    return _NewWorkOrderReportState(
      state: state,
      reports: reports,
      addedReports: addedReports,
      selectedReports: selectedReports,
    );
  }
}

/// @nodoc
const $NewWorkOrderReportState = _$NewWorkOrderReportStateTearOff();

/// @nodoc
mixin _$NewWorkOrderReportState {
  ResultState get state => throw _privateConstructorUsedError;
  List<ReportSurvey> get reports => throw _privateConstructorUsedError;
  List<ReportSurvey> get addedReports => throw _privateConstructorUsedError;
  ReportSurvey get selectedReports => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewWorkOrderReportStateCopyWith<NewWorkOrderReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewWorkOrderReportStateCopyWith<$Res> {
  factory $NewWorkOrderReportStateCopyWith(NewWorkOrderReportState value,
          $Res Function(NewWorkOrderReportState) then) =
      _$NewWorkOrderReportStateCopyWithImpl<$Res>;
  $Res call(
      {ResultState state,
      List<ReportSurvey> reports,
      List<ReportSurvey> addedReports,
      ReportSurvey selectedReports});

  $ResultStateCopyWith<$Res> get state;
  $ReportSurveyCopyWith<$Res> get selectedReports;
}

/// @nodoc
class _$NewWorkOrderReportStateCopyWithImpl<$Res>
    implements $NewWorkOrderReportStateCopyWith<$Res> {
  _$NewWorkOrderReportStateCopyWithImpl(this._value, this._then);

  final NewWorkOrderReportState _value;
  // ignore: unused_field
  final $Res Function(NewWorkOrderReportState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? reports = freezed,
    Object? addedReports = freezed,
    Object? selectedReports = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSurvey>,
      addedReports: addedReports == freezed
          ? _value.addedReports
          : addedReports // ignore: cast_nullable_to_non_nullable
              as List<ReportSurvey>,
      selectedReports: selectedReports == freezed
          ? _value.selectedReports
          : selectedReports // ignore: cast_nullable_to_non_nullable
              as ReportSurvey,
    ));
  }

  @override
  $ResultStateCopyWith<$Res> get state {
    return $ResultStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }

  @override
  $ReportSurveyCopyWith<$Res> get selectedReports {
    return $ReportSurveyCopyWith<$Res>(_value.selectedReports, (value) {
      return _then(_value.copyWith(selectedReports: value));
    });
  }
}

/// @nodoc
abstract class _$NewWorkOrderReportStateCopyWith<$Res>
    implements $NewWorkOrderReportStateCopyWith<$Res> {
  factory _$NewWorkOrderReportStateCopyWith(_NewWorkOrderReportState value,
          $Res Function(_NewWorkOrderReportState) then) =
      __$NewWorkOrderReportStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResultState state,
      List<ReportSurvey> reports,
      List<ReportSurvey> addedReports,
      ReportSurvey selectedReports});

  @override
  $ResultStateCopyWith<$Res> get state;
  @override
  $ReportSurveyCopyWith<$Res> get selectedReports;
}

/// @nodoc
class __$NewWorkOrderReportStateCopyWithImpl<$Res>
    extends _$NewWorkOrderReportStateCopyWithImpl<$Res>
    implements _$NewWorkOrderReportStateCopyWith<$Res> {
  __$NewWorkOrderReportStateCopyWithImpl(_NewWorkOrderReportState _value,
      $Res Function(_NewWorkOrderReportState) _then)
      : super(_value, (v) => _then(v as _NewWorkOrderReportState));

  @override
  _NewWorkOrderReportState get _value =>
      super._value as _NewWorkOrderReportState;

  @override
  $Res call({
    Object? state = freezed,
    Object? reports = freezed,
    Object? addedReports = freezed,
    Object? selectedReports = freezed,
  }) {
    return _then(_NewWorkOrderReportState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ResultState,
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSurvey>,
      addedReports: addedReports == freezed
          ? _value.addedReports
          : addedReports // ignore: cast_nullable_to_non_nullable
              as List<ReportSurvey>,
      selectedReports: selectedReports == freezed
          ? _value.selectedReports
          : selectedReports // ignore: cast_nullable_to_non_nullable
              as ReportSurvey,
    ));
  }
}

/// @nodoc

class _$_NewWorkOrderReportState implements _NewWorkOrderReportState {
  const _$_NewWorkOrderReportState(
      {required this.state,
      required this.reports,
      required this.addedReports,
      required this.selectedReports});

  @override
  final ResultState state;
  @override
  final List<ReportSurvey> reports;
  @override
  final List<ReportSurvey> addedReports;
  @override
  final ReportSurvey selectedReports;

  @override
  String toString() {
    return 'NewWorkOrderReportState(state: $state, reports: $reports, addedReports: $addedReports, selectedReports: $selectedReports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewWorkOrderReportState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.reports, reports) &&
            const DeepCollectionEquality()
                .equals(other.addedReports, addedReports) &&
            const DeepCollectionEquality()
                .equals(other.selectedReports, selectedReports));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(reports),
      const DeepCollectionEquality().hash(addedReports),
      const DeepCollectionEquality().hash(selectedReports));

  @JsonKey(ignore: true)
  @override
  _$NewWorkOrderReportStateCopyWith<_NewWorkOrderReportState> get copyWith =>
      __$NewWorkOrderReportStateCopyWithImpl<_NewWorkOrderReportState>(
          this, _$identity);
}

abstract class _NewWorkOrderReportState implements NewWorkOrderReportState {
  const factory _NewWorkOrderReportState(
      {required ResultState state,
      required List<ReportSurvey> reports,
      required List<ReportSurvey> addedReports,
      required ReportSurvey selectedReports}) = _$_NewWorkOrderReportState;

  @override
  ResultState get state;
  @override
  List<ReportSurvey> get reports;
  @override
  List<ReportSurvey> get addedReports;
  @override
  ReportSurvey get selectedReports;
  @override
  @JsonKey(ignore: true)
  _$NewWorkOrderReportStateCopyWith<_NewWorkOrderReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
