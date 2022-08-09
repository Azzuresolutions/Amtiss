// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenResultElement _$$_TokenResultElementFromJson(
        Map<String, dynamic> json) =>
    _$_TokenResultElement(
      token: json['token'] as String?,
      id: json['id'] as int?,
      companyId: json['company_id'] as int?,
    );

Map<String, dynamic> _$$_TokenResultElementToJson(
        _$_TokenResultElement instance) =>
    <String, dynamic>{
      'token': instance.token,
      'id': instance.id,
      'company_id': instance.companyId,
    };

_$_PurpleTokenResult _$$_PurpleTokenResultFromJson(Map<String, dynamic> json) =>
    _$_PurpleTokenResult(
      status: json['status'] as bool?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$$_PurpleTokenResultToJson(
        _$_PurpleTokenResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
    };
