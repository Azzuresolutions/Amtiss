// To parse this JSON data, do
//
//     final tokenResult = tokenResultFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'token_result.freezed.dart';
part 'token_result.g.dart';

List<dynamic> tokenResultFromJson(String str) => List<dynamic>.from(json.decode(str).map((x) => x));

String tokenResultToJson(List<dynamic> data) => json.encode(List<dynamic>.from(data.map((x) => x)));

@freezed
abstract class TokenResultElement with _$TokenResultElement {
    const factory TokenResultElement({
        String? token,
        int? id,
        @JsonKey(name: "company_id") int? companyId,
    }) = _TokenResultElement;

    factory TokenResultElement.fromJson(Map<String, dynamic> json) => _$TokenResultElementFromJson(json);
}

@freezed
abstract class PurpleTokenResult with _$PurpleTokenResult {
    const factory PurpleTokenResult({
        bool? status,
        String? msg,
    }) = _PurpleTokenResult;

    factory PurpleTokenResult.fromJson(Map<String, dynamic> json) => _$PurpleTokenResultFromJson(json);
}
