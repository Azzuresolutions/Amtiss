// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) {
  return _PhotoModel.fromJson(json);
}

/// @nodoc
class _$PhotoModelTearOff {
  const _$PhotoModelTearOff();

  _PhotoModel call(
      {@JsonKey(name: "Photos") PhotoModel? photoModel,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg}) {
    return _PhotoModel(
      photoModel: photoModel,
      status: status,
      msg: msg,
    );
  }

  PhotoModel fromJson(Map<String, Object?> json) {
    return PhotoModel.fromJson(json);
  }
}

/// @nodoc
const $PhotoModel = _$PhotoModelTearOff();

/// @nodoc
mixin _$PhotoModel {
  @JsonKey(name: "Photos")
  PhotoModel? get photoModel => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoModelCopyWith<PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelCopyWith<$Res> {
  factory $PhotoModelCopyWith(
          PhotoModel value, $Res Function(PhotoModel) then) =
      _$PhotoModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "Photos") PhotoModel? photoModel,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg});

  $PhotoModelCopyWith<$Res>? get photoModel;
}

/// @nodoc
class _$PhotoModelCopyWithImpl<$Res> implements $PhotoModelCopyWith<$Res> {
  _$PhotoModelCopyWithImpl(this._value, this._then);

  final PhotoModel _value;
  // ignore: unused_field
  final $Res Function(PhotoModel) _then;

  @override
  $Res call({
    Object? photoModel = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      photoModel: photoModel == freezed
          ? _value.photoModel
          : photoModel // ignore: cast_nullable_to_non_nullable
              as PhotoModel?,
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

  @override
  $PhotoModelCopyWith<$Res>? get photoModel {
    if (_value.photoModel == null) {
      return null;
    }

    return $PhotoModelCopyWith<$Res>(_value.photoModel!, (value) {
      return _then(_value.copyWith(photoModel: value));
    });
  }
}

/// @nodoc
abstract class _$PhotoModelCopyWith<$Res> implements $PhotoModelCopyWith<$Res> {
  factory _$PhotoModelCopyWith(
          _PhotoModel value, $Res Function(_PhotoModel) then) =
      __$PhotoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "Photos") PhotoModel? photoModel,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg});

  @override
  $PhotoModelCopyWith<$Res>? get photoModel;
}

/// @nodoc
class __$PhotoModelCopyWithImpl<$Res> extends _$PhotoModelCopyWithImpl<$Res>
    implements _$PhotoModelCopyWith<$Res> {
  __$PhotoModelCopyWithImpl(
      _PhotoModel _value, $Res Function(_PhotoModel) _then)
      : super(_value, (v) => _then(v as _PhotoModel));

  @override
  _PhotoModel get _value => super._value as _PhotoModel;

  @override
  $Res call({
    Object? photoModel = freezed,
    Object? status = freezed,
    Object? msg = freezed,
  }) {
    return _then(_PhotoModel(
      photoModel: photoModel == freezed
          ? _value.photoModel
          : photoModel // ignore: cast_nullable_to_non_nullable
              as PhotoModel?,
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
class _$_PhotoModel implements _PhotoModel {
  const _$_PhotoModel(
      {@JsonKey(name: "Photos") this.photoModel,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "msg") this.msg});

  factory _$_PhotoModel.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoModelFromJson(json);

  @override
  @JsonKey(name: "Photos")
  final PhotoModel? photoModel;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "msg")
  final String? msg;

  @override
  String toString() {
    return 'PhotoModel(photoModel: $photoModel, status: $status, msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoModel &&
            const DeepCollectionEquality()
                .equals(other.photoModel, photoModel) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(photoModel),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$PhotoModelCopyWith<_PhotoModel> get copyWith =>
      __$PhotoModelCopyWithImpl<_PhotoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoModelToJson(this);
  }
}

abstract class _PhotoModel implements PhotoModel {
  const factory _PhotoModel(
      {@JsonKey(name: "Photos") PhotoModel? photoModel,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "msg") String? msg}) = _$_PhotoModel;

  factory _PhotoModel.fromJson(Map<String, dynamic> json) =
      _$_PhotoModel.fromJson;

  @override
  @JsonKey(name: "Photos")
  PhotoModel? get photoModel;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$PhotoModelCopyWith<_PhotoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoModelData _$PhotoModelDataFromJson(Map<String, dynamic> json) {
  return _PhotoModelData.fromJson(json);
}

/// @nodoc
class _$PhotoModelDataTearOff {
  const _$PhotoModelDataTearOff();

  _PhotoModelData call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name}) {
    return _PhotoModelData(
      id: id,
      name: name,
    );
  }

  PhotoModelData fromJson(Map<String, Object?> json) {
    return PhotoModelData.fromJson(json);
  }
}

/// @nodoc
const $PhotoModelData = _$PhotoModelDataTearOff();

/// @nodoc
mixin _$PhotoModelData {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoModelDataCopyWith<PhotoModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoModelDataCopyWith<$Res> {
  factory $PhotoModelDataCopyWith(
          PhotoModelData value, $Res Function(PhotoModelData) then) =
      _$PhotoModelDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class _$PhotoModelDataCopyWithImpl<$Res>
    implements $PhotoModelDataCopyWith<$Res> {
  _$PhotoModelDataCopyWithImpl(this._value, this._then);

  final PhotoModelData _value;
  // ignore: unused_field
  final $Res Function(PhotoModelData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PhotoModelDataCopyWith<$Res>
    implements $PhotoModelDataCopyWith<$Res> {
  factory _$PhotoModelDataCopyWith(
          _PhotoModelData value, $Res Function(_PhotoModelData) then) =
      __$PhotoModelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id, @JsonKey(name: "name") String? name});
}

/// @nodoc
class __$PhotoModelDataCopyWithImpl<$Res>
    extends _$PhotoModelDataCopyWithImpl<$Res>
    implements _$PhotoModelDataCopyWith<$Res> {
  __$PhotoModelDataCopyWithImpl(
      _PhotoModelData _value, $Res Function(_PhotoModelData) _then)
      : super(_value, (v) => _then(v as _PhotoModelData));

  @override
  _PhotoModelData get _value => super._value as _PhotoModelData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_PhotoModelData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PhotoModelData implements _PhotoModelData {
  const _$_PhotoModelData(
      {@JsonKey(name: "id") this.id, @JsonKey(name: "name") this.name});

  factory _$_PhotoModelData.fromJson(Map<String, dynamic> json) =>
      _$$_PhotoModelDataFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;

  @override
  String toString() {
    return 'PhotoModelData(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhotoModelData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$PhotoModelDataCopyWith<_PhotoModelData> get copyWith =>
      __$PhotoModelDataCopyWithImpl<_PhotoModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhotoModelDataToJson(this);
  }
}

abstract class _PhotoModelData implements PhotoModelData {
  const factory _PhotoModelData(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name}) = _$_PhotoModelData;

  factory _PhotoModelData.fromJson(Map<String, dynamic> json) =
      _$_PhotoModelData.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$PhotoModelDataCopyWith<_PhotoModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
