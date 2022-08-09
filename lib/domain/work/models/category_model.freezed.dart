// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssetModel _$AssetModelFromJson(Map<String, dynamic> json) {
  return _AssetModel.fromJson(json);
}

/// @nodoc
class _$AssetModelTearOff {
  const _$AssetModelTearOff();

  _AssetModel call({@JsonKey(name: "items") List<AssetItem>? assetItems}) {
    return _AssetModel(
      assetItems: assetItems,
    );
  }

  AssetModel fromJson(Map<String, Object?> json) {
    return AssetModel.fromJson(json);
  }
}

/// @nodoc
const $AssetModel = _$AssetModelTearOff();

/// @nodoc
mixin _$AssetModel {
  @JsonKey(name: "items")
  List<AssetItem>? get assetItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetModelCopyWith<AssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetModelCopyWith<$Res> {
  factory $AssetModelCopyWith(
          AssetModel value, $Res Function(AssetModel) then) =
      _$AssetModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "items") List<AssetItem>? assetItems});
}

/// @nodoc
class _$AssetModelCopyWithImpl<$Res> implements $AssetModelCopyWith<$Res> {
  _$AssetModelCopyWithImpl(this._value, this._then);

  final AssetModel _value;
  // ignore: unused_field
  final $Res Function(AssetModel) _then;

  @override
  $Res call({
    Object? assetItems = freezed,
  }) {
    return _then(_value.copyWith(
      assetItems: assetItems == freezed
          ? _value.assetItems
          : assetItems // ignore: cast_nullable_to_non_nullable
              as List<AssetItem>?,
    ));
  }
}

/// @nodoc
abstract class _$AssetModelCopyWith<$Res> implements $AssetModelCopyWith<$Res> {
  factory _$AssetModelCopyWith(
          _AssetModel value, $Res Function(_AssetModel) then) =
      __$AssetModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "items") List<AssetItem>? assetItems});
}

/// @nodoc
class __$AssetModelCopyWithImpl<$Res> extends _$AssetModelCopyWithImpl<$Res>
    implements _$AssetModelCopyWith<$Res> {
  __$AssetModelCopyWithImpl(
      _AssetModel _value, $Res Function(_AssetModel) _then)
      : super(_value, (v) => _then(v as _AssetModel));

  @override
  _AssetModel get _value => super._value as _AssetModel;

  @override
  $Res call({
    Object? assetItems = freezed,
  }) {
    return _then(_AssetModel(
      assetItems: assetItems == freezed
          ? _value.assetItems
          : assetItems // ignore: cast_nullable_to_non_nullable
              as List<AssetItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetModel implements _AssetModel {
  const _$_AssetModel({@JsonKey(name: "items") this.assetItems});

  factory _$_AssetModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssetModelFromJson(json);

  @override
  @JsonKey(name: "items")
  final List<AssetItem>? assetItems;

  @override
  String toString() {
    return 'AssetModel(assetItems: $assetItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AssetModel &&
            const DeepCollectionEquality()
                .equals(other.assetItems, assetItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(assetItems));

  @JsonKey(ignore: true)
  @override
  _$AssetModelCopyWith<_AssetModel> get copyWith =>
      __$AssetModelCopyWithImpl<_AssetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetModelToJson(this);
  }
}

abstract class _AssetModel implements AssetModel {
  const factory _AssetModel(
      {@JsonKey(name: "items") List<AssetItem>? assetItems}) = _$_AssetModel;

  factory _AssetModel.fromJson(Map<String, dynamic> json) =
      _$_AssetModel.fromJson;

  @override
  @JsonKey(name: "items")
  List<AssetItem>? get assetItems;
  @override
  @JsonKey(ignore: true)
  _$AssetModelCopyWith<_AssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

AssetItem _$AssetItemFromJson(Map<String, dynamic> json) {
  return _Asset.fromJson(json);
}

/// @nodoc
class _$AssetItemTearOff {
  const _$AssetItemTearOff();

  _Asset call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "uom_id") List<dynamic>? uomId}) {
    return _Asset(
      id: id,
      name: name,
      uomId: uomId,
    );
  }

  AssetItem fromJson(Map<String, Object?> json) {
    return AssetItem.fromJson(json);
  }
}

/// @nodoc
const $AssetItem = _$AssetItemTearOff();

/// @nodoc
mixin _$AssetItem {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uom_id")
  List<dynamic>? get uomId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetItemCopyWith<AssetItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetItemCopyWith<$Res> {
  factory $AssetItemCopyWith(AssetItem value, $Res Function(AssetItem) then) =
      _$AssetItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "uom_id") List<dynamic>? uomId});
}

/// @nodoc
class _$AssetItemCopyWithImpl<$Res> implements $AssetItemCopyWith<$Res> {
  _$AssetItemCopyWithImpl(this._value, this._then);

  final AssetItem _value;
  // ignore: unused_field
  final $Res Function(AssetItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? uomId = freezed,
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
      uomId: uomId == freezed
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$AssetCopyWith<$Res> implements $AssetItemCopyWith<$Res> {
  factory _$AssetCopyWith(_Asset value, $Res Function(_Asset) then) =
      __$AssetCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "uom_id") List<dynamic>? uomId});
}

/// @nodoc
class __$AssetCopyWithImpl<$Res> extends _$AssetItemCopyWithImpl<$Res>
    implements _$AssetCopyWith<$Res> {
  __$AssetCopyWithImpl(_Asset _value, $Res Function(_Asset) _then)
      : super(_value, (v) => _then(v as _Asset));

  @override
  _Asset get _value => super._value as _Asset;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? uomId = freezed,
  }) {
    return _then(_Asset(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      uomId: uomId == freezed
          ? _value.uomId
          : uomId // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Asset implements _Asset {
  const _$_Asset(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "uom_id") this.uomId});

  factory _$_Asset.fromJson(Map<String, dynamic> json) =>
      _$$_AssetFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "uom_id")
  final List<dynamic>? uomId;

  @override
  String toString() {
    return 'AssetItem(id: $id, name: $name, uomId: $uomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Asset &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.uomId, uomId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(uomId));

  @JsonKey(ignore: true)
  @override
  _$AssetCopyWith<_Asset> get copyWith =>
      __$AssetCopyWithImpl<_Asset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetToJson(this);
  }
}

abstract class _Asset implements AssetItem {
  const factory _Asset(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "uom_id") List<dynamic>? uomId}) = _$_Asset;

  factory _Asset.fromJson(Map<String, dynamic> json) = _$_Asset.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "uom_id")
  List<dynamic>? get uomId;
  @override
  @JsonKey(ignore: true)
  _$AssetCopyWith<_Asset> get copyWith => throw _privateConstructorUsedError;
}
