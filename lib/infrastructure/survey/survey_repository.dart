import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/survey/i_survey_repository.dart';
import 'package:amtiss/domain/survey/models/photo_model.dart';
import 'package:amtiss/domain/survey/models/report_detail.dart';
import 'package:amtiss/infrastructure/core/common_functions.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:fpdart/src/either.dart';
import 'package:amtiss/domain/survey/models/survey_result.dart';
import 'package:fpdart/src/unit.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISurveyRepository)
class SurveyRepository implements ISurveyRepository {
  final INetworkService _netsurvey;

  SurveyRepository(
    this._netsurvey,
  );

  @override
  Future<Either<ResultState, HashMap<String, List<SurveyOrder>>>> getSurveys(
      surveyId, woId) async {
    List<SurveyOrder> result = [];
    HashMap<String, List<SurveyOrder>> listCommon = HashMap();
    var dio = _netsurvey.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get(
        "$url/survey.user_input/search",
        queryParameters: {
          "token": token,
          "fields":
              "['survey_id','state','asset_id','assignment_id','user_id','start_datetime','end_datetime']",
          "domain": "[('survey_id','=',$surveyId),('assignment_id','=',$woId)]"
        },
      );
      // TODO
      log('link ${response.realUri}');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        for (var i in data[0]) {
          result.add(SurveyOrder.fromJson(i));
        }
        listCommon.putIfAbsent(surveyId!, () {
          return result;
        });
        print("All Data" + listCommon.toString());
        return right(listCommon);
      } else {
        return left(
          ResultState.error("Ups, an error occured, Please try again"),
        );
      }
    } catch (e) {
      return left(
        ResultState.error("Ups, an error occured, Please try again"),
      );
    }
  }

  @override
  Future<Either<ResultState, Unit>> updateStatus(
      String id, String status) async {
    var dio = _netsurvey.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get(
        "$url/survey.user_input/update/$id?token=$token&update_vals={'state':'$status'}",
      );
      if (response.statusCode == 200) {
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(unit);
      } else {
        return left(
          ResultState.error("Ups, an error occured, Please try again"),
        );
      }
    } catch (e) {
      return left(
        ResultState.error("Ups, an error occured, Please try again"),
      );
    }
  }

  @override
  Future<Either<ResultState, List<ReportDetailQuestion>>> getQuestion(
      id) async {
    List<ReportDetailQuestion> result = [];
    var dio = _netsurvey.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get(
        "$url/survey.user_input.line/search",
        queryParameters: {
          "token": token,
          "fields":
              "['survey_id','question_sequence','question_id','result','page_id']",
          "domain": "[('user_input_id','=',$id)]"
        },
      );
      // TODO
      log('link ${response.realUri}');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        for (var i in data[0]) {
          result.add(ReportDetailQuestion.fromJson(i));
        }
        return right(result);
      } else {
        return left(
          ResultState.error("Ups, an error occured, Please try again"),
        );
      }
    } catch (e) {
      return left(
        ResultState.error("Ups, an error occured, Please try again"),
      );
    }
  }

  @override
  Future<Either<ResultState, List<PhotoModelData>>> photos(id) async {
    List<PhotoModelData> result = [];
    var dio = _netsurvey.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get(
        "$url/ir.attachment/search",
        queryParameters: {
          "token": token,
          // "fields":
          //     "['survey_id','question_sequence','question_id','result','page_id']",
          "domain": "[('survey_user_input_id','=',$id)]"
        },
      );
      // TODO
      log('link ${response.realUri}');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        for (var i in data[0]) {
          result.add(PhotoModelData.fromJson(i));
        }
        return right(result);
      } else {
        return left(
          ResultState.error("Ups, an error occured, Please try again"),
        );
      }
    } catch (e) {
      return left(
        ResultState.error("Ups, an error occured, Please try again"),
      );
    }
  }
}
