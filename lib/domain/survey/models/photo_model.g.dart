// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PhotoModel _$$_PhotoModelFromJson(Map<String, dynamic> json) =>
    _$_PhotoModel(
      photoModel: json['Photos'] == null
          ? null
          : PhotoModel.fromJson(json['Photos'] as Map<String, dynamic>),
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$_PhotoModelToJson(_$_PhotoModel instance) =>
    <String, dynamic>{
      'Photos': instance.photoModel,
      'status': instance.status,
      'msg': instance.msg,
    };

_$_PhotoModelData _$$_PhotoModelDataFromJson(Map<String, dynamic> json) =>
    _$_PhotoModelData(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_PhotoModelDataToJson(_$_PhotoModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
