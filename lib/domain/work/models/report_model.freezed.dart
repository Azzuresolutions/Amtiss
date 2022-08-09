// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
class _$ReportModelTearOff {
  const _$ReportModelTearOff();

  _ReportModel call({@JsonKey(name: "items") List<ReportSurvey>? reports}) {
    return _ReportModel(
      reports: reports,
    );
  }

  ReportModel fromJson(Map<String, Object?> json) {
    return ReportModel.fromJson(json);
  }
}

/// @nodoc
const $ReportModel = _$ReportModelTearOff();

/// @nodoc
mixin _$ReportModel {
  @JsonKey(name: "items")
  List<ReportSurvey>? get reports => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) then) =
      _$ReportModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "items") List<ReportSurvey>? reports});
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res> implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

  final ReportModel _value;
  // ignore: unused_field
  final $Res Function(ReportModel) _then;

  @override
  $Res call({
    Object? reports = freezed,
  }) {
    return _then(_value.copyWith(
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSurvey>?,
    ));
  }
}

/// @nodoc
abstract class _$ReportModelCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$ReportModelCopyWith(
          _ReportModel value, $Res Function(_ReportModel) then) =
      __$ReportModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "items") List<ReportSurvey>? reports});
}

/// @nodoc
class __$ReportModelCopyWithImpl<$Res> extends _$ReportModelCopyWithImpl<$Res>
    implements _$ReportModelCopyWith<$Res> {
  __$ReportModelCopyWithImpl(
      _ReportModel _value, $Res Function(_ReportModel) _then)
      : super(_value, (v) => _then(v as _ReportModel));

  @override
  _ReportModel get _value => super._value as _ReportModel;

  @override
  $Res call({
    Object? reports = freezed,
  }) {
    return _then(_ReportModel(
      reports: reports == freezed
          ? _value.reports
          : reports // ignore: cast_nullable_to_non_nullable
              as List<ReportSurvey>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportModel implements _ReportModel {
  const _$_ReportModel({@JsonKey(name: "items") this.reports});

  factory _$_ReportModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReportModelFromJson(json);

  @override
  @JsonKey(name: "items")
  final List<ReportSurvey>? reports;

  @override
  String toString() {
    return 'ReportModel(reports: $reports)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportModel &&
            const DeepCollectionEquality().equals(other.reports, reports));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reports));

  @JsonKey(ignore: true)
  @override
  _$ReportModelCopyWith<_ReportModel> get copyWith =>
      __$ReportModelCopyWithImpl<_ReportModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportModelToJson(this);
  }
}

abstract class _ReportModel implements ReportModel {
  const factory _ReportModel(
      {@JsonKey(name: "items") List<ReportSurvey>? reports}) = _$_ReportModel;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$_ReportModel.fromJson;

  @override
  @JsonKey(name: "items")
  List<ReportSurvey>? get reports;
  @override
  @JsonKey(ignore: true)
  _$ReportModelCopyWith<_ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportSurvey _$ReportSurveyFromJson(Map<String, dynamic> json) {
  return _ReportSurvey.fromJson(json);
}

/// @nodoc
class _$ReportSurveyTearOff {
  const _$ReportSurveyTearOff();

  _ReportSurvey call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "code") String? code}) {
    return _ReportSurvey(
      id: id,
      title: title,
      code: code,
    );
  }

  ReportSurvey fromJson(Map<String, Object?> json) {
    return ReportSurvey.fromJson(json);
  }
}

/// @nodoc
const $ReportSurvey = _$ReportSurveyTearOff();

/// @nodoc
mixin _$ReportSurvey {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportSurveyCopyWith<ReportSurvey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportSurveyCopyWith<$Res> {
  factory $ReportSurveyCopyWith(
          ReportSurvey value, $Res Function(ReportSurvey) then) =
      _$ReportSurveyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "code") String? code});
}

/// @nodoc
class _$ReportSurveyCopyWithImpl<$Res> implements $ReportSurveyCopyWith<$Res> {
  _$ReportSurveyCopyWithImpl(this._value, this._then);

  final ReportSurvey _value;
  // ignore: unused_field
  final $Res Function(ReportSurvey) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReportSurveyCopyWith<$Res>
    implements $ReportSurveyCopyWith<$Res> {
  factory _$ReportSurveyCopyWith(
          _ReportSurvey value, $Res Function(_ReportSurvey) then) =
      __$ReportSurveyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "code") String? code});
}

/// @nodoc
class __$ReportSurveyCopyWithImpl<$Res> extends _$ReportSurveyCopyWithImpl<$Res>
    implements _$ReportSurveyCopyWith<$Res> {
  __$ReportSurveyCopyWithImpl(
      _ReportSurvey _value, $Res Function(_ReportSurvey) _then)
      : super(_value, (v) => _then(v as _ReportSurvey));

  @override
  _ReportSurvey get _value => super._value as _ReportSurvey;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? code = freezed,
  }) {
    return _then(_ReportSurvey(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportSurvey implements _ReportSurvey {
  const _$_ReportSurvey(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "code") this.code});

  factory _$_ReportSurvey.fromJson(Map<String, dynamic> json) =>
      _$$_ReportSurveyFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "code")
  final String? code;

  @override
  String toString() {
    return 'ReportSurvey(id: $id, title: $title, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportSurvey &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$ReportSurveyCopyWith<_ReportSurvey> get copyWith =>
      __$ReportSurveyCopyWithImpl<_ReportSurvey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportSurveyToJson(this);
  }
}

abstract class _ReportSurvey implements ReportSurvey {
  const factory _ReportSurvey(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "code") String? code}) = _$_ReportSurvey;

  factory _ReportSurvey.fromJson(Map<String, dynamic> json) =
      _$_ReportSurvey.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$ReportSurveyCopyWith<_ReportSurvey> get copyWith =>
      throw _privateConstructorUsedError;
}
