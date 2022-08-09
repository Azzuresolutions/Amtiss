import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:amtiss/domain/core/models/token_result.dart';
import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/login/i_login_repository.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:code_id_network/code_interfaces/code_interfaces.dart';
import 'package:code_id_storage/code_id_storage.dart';
import 'package:injectable/injectable.dart';

import '../../shared/config.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  final INetworkService _network;

  LoginRepository(this._network);
  @override
  Future<Either<ResultState, TokenResultElement>> login(
      {required String username,
      required String companyOrIp,
      required String password}) async {
    try {
      await Storage.openLazyBox("prefix_url");
      Storage.putData(
        data: {"prefix_url": companyOrIp},
      );
      var dio = _network.getDio();
      var response = await dio.get(
          "$companyOrIp.${Config.baseUrl}/user/get_token",
          queryParameters: {
            "login": username,
            "password": password,
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        debugPrint(response.data);
        return right(TokenResultElement.fromJson(data[1][0]));
      } else {
        return left(
          ResultState.error("Login Failed, please try again"),
        );
      }
    } on Exception catch (e) {
      debugPrint("on Exception catch ${e.toString()}");
      if (e.toString().contains("Connection refused")) {
        return left(
          ResultState.error("Login Failed, Connection timeout"),
        );
      }
      return left(
        ResultState.error("Login Failed, please try again"),
      );
    }
  }
}
