import 'package:amtiss/domain/work/models/category_model.dart';
import 'package:amtiss/domain/work/models/group_assignment_model.dart';
import 'package:amtiss/domain/work/models/report_model.dart';
import 'package:fpdart/fpdart.dart';

import 'package:amtiss/domain/core/result_state.dart';

import 'models/work_result.dart';

abstract class IWorkRepository {
  Future<Either<ResultState, WorkResult>> getWorks();

  Future<Either<ResultState, Unit>> updateStatus(
    String id,
    String status,
  );

  Future<Either<ResultState, AssetModel>> getCategories();

  Future<Either<ResultState, AssetModel>> getLocation();

  Future<Either<ResultState, AssetModel>> getAssets(
      AssetItem category, AssetItem location);

  Future<Either<ResultState, AssetModel>> getJobActivities();

  Future<Either<ResultState, AssetModel>> getAssignTo(
      AssetItem category, AssetItem location, String selectedTeamOrUser);

  Future<Either<ResultState, ReportModel>> getReports();

  Future<Either<ResultState, GroupAssignmentModel>> groupAssignmentAdd(
      {AssetItem category,
      AssetItem location,
      String selectedTeamOrUser,
      String selectedOpenDate,
      String selectedDueDate,
        AssetItem selectedAssignTo,
      String selectedJobType,
      String selectedJobPriority,
      AssetItem selectedAsset,
      AssetItem selectedJobActivity,
      String description});

  Future<Either<ResultState, GroupAssignmentModel>> reportsAdd(
      {List<String> reportList});

  Future<Either<ResultState, GroupAssignmentModel>> resourcesAdd(
      {List<String> resourceList});

  Future<Either<ResultState, AssetModel>> getResourceCategory();

  Future<Either<ResultState, AssetModel>> getResourceItem(AssetItem category);
}
