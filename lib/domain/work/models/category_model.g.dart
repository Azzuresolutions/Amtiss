// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssetModel _$$_AssetModelFromJson(Map<String, dynamic> json) =>
    _$_AssetModel(
      assetItems: (json['items'] as List<dynamic>?)
          ?.map((e) => AssetItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AssetModelToJson(_$_AssetModel instance) =>
    <String, dynamic>{
      'items': instance.assetItems,
    };

_$_Asset _$$_AssetFromJson(Map<String, dynamic> json) => _$_Asset(
      id: json['id'] as int?,
      name: json['name'] as String?,
      uomId: json['uom_id'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_AssetToJson(_$_Asset instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uom_id': instance.uomId,
    };
