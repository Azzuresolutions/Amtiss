import 'dart:collection';

import 'package:amtiss/domain/survey/models/photo_model.dart';
import 'package:amtiss/domain/survey/models/report_detail.dart';
import 'package:fpdart/fpdart.dart';

import 'package:amtiss/domain/core/result_state.dart';

import 'models/survey_result.dart';

abstract class ISurveyRepository {
  Future<Either<ResultState, HashMap<String, List<SurveyOrder>>>> getSurveys(
      String? surveyId, String? woId);
  Future<Either<ResultState, List<ReportDetailQuestion>>> getQuestion(int? id);
  Future<Either<ResultState, List<PhotoModelData>>> photos(int? id);
  Future<Either<ResultState, Unit>> updateStatus(
    String id,
    String status,
  );
}
