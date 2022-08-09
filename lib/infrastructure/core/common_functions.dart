import 'dart:convert';

import 'package:amtiss/domain/core/models/token_result.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:flutter/material.dart';

import '../../shared/config.dart';

Future<String> getBaseUrl() async {
  await Storage.openLazyBox("prefix_url");
  return "${(await Storage.getData(key: "prefix_url")) ?? "v4"}.${Config.baseUrl}";
}

Future<String?> getToken() async {
  // await Storage.openLazyBox("current_user");
  var data = await Storage.getData(key: "data");
  if (data == null) return null;
  return TokenResultElement.fromJson(jsonDecode(data)).token;
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}

Color getPriorityColor(String value) {
  switch (value) {
    case "high":
      return Colors.red[800]!;
    case "medium":
      return Colors.yellow[800]!;
    case "low":
      return Colors.blue[800]!;
    default:
      return Colors.blue[700]!;
  }
}

Color getHighOrderColor(String value, Status comparer) {
  var data = CommonData.statuses.singleWhere(
    (element) => element.name == value,
    orElse: () => Status("", Colors.black, -1),
  );
  if (comparer.order == data.order) {
    return Colors.green[800]!;
  }
  if (comparer.order > data.order) {
    return Colors.yellow[800]!;
  }
  return Colors.grey;
}

Color getReportHighOrderColor(String value, Status comparer) {
  var data = CommonData.report_statuses.singleWhere(
    (element) => element.name == value,
    orElse: () => Status("", Colors.black, -1),
  );
  if (comparer.order == data.order) {
    return Colors.green[800]!;
  }
  if (comparer.order > data.order) {
    return Colors.deepOrange[800]!;
  }
  return Colors.grey;
}
