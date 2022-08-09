import 'dart:convert';
import 'dart:developer';

import 'package:amtiss/domain/core/result_state.dart';
import 'package:amtiss/domain/work/i_work_repository.dart';
import 'package:amtiss/domain/work/models/category_model.dart';
import 'package:amtiss/domain/work/models/group_assignment_model.dart';
import 'package:amtiss/domain/work/models/report_model.dart';
import 'package:amtiss/infrastructure/core/common_functions.dart';
import 'package:code_id_network/code_id_network.dart';
import 'package:fpdart/src/either.dart';
import 'package:amtiss/domain/work/models/work_result.dart';
import 'package:fpdart/src/unit.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IWorkRepository)
class WorkRepository implements IWorkRepository {
  final INetworkService _network;

  WorkRepository(this._network);

  @override
  Future<Either<ResultState, WorkResult>> getWorks() async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get("$url/amtiss.api/assignment/get_work_order",
          queryParameters: {"token": token});
      log('link ${"$url/amtiss.api/assignment/get_work_order"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(WorkResult.fromJson(data[0]));
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
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get(
        "$url/amtiss.assignment/update/$id?token=$token&update_vals={'state':'$status'}",
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
  Future<Either<ResultState, AssetModel>> getCategories() async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get("$url/amtiss.asset.category/search",
          queryParameters: {"token": token});
      log('link ${"$url/amtiss.asset.category/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(AssetModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, AssetModel>> getLocation() async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get("$url/amtiss.location/search",
          queryParameters: {"token": token});
      log('link ${"$url/amtiss.asset.category/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(AssetModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, AssetModel>> getAssets(
      AssetItem category, AssetItem location) async {
    var dio = _network.getDio();
    print("$category $location");
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response =
          await dio.get("$url/amtiss.asset/search", queryParameters: {
        "token": token,
        "domain":
            "[('location_id','=',${location.id}),('category_id','=',${category.id})]"
      });
      log('link ${"$url/amtiss.asset.category/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(AssetModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, AssetModel>> getJobActivities() async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get("$url/amtiss.activity/search",
          queryParameters: {"token": token});
      log('link ${"$url/amtiss.asset.activity/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(AssetModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, AssetModel>> getAssignTo(
      AssetItem category, AssetItem location, String selectedTeamOrUser) async {
    var dio = _network.getDio();
    print("$category $location");
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var callUrl = selectedTeamOrUser == 'team'
          ? "$url/res.groups/search"
          : "$url/res.users/search";
      var domain = selectedTeamOrUser == 'team'
          ? {"token": token, "domain": "[('category_id','=','Amtiss')]"}
          : {
              "token": token,
              "domain": "[('location_id','=','${location.name}')]"
            };
      var response = await dio.get(callUrl, queryParameters: domain);
      log('link ${"$url/res.groups/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(AssetModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, ReportModel>> getReports() async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio
          .get("$url/survey.survey/search", queryParameters: {"token": token,'fields':"['id','title','code']"});
      log('link ${"$url/survey.survey/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        return right(ReportModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, AssetModel>> getResourceCategory() async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var response = await dio.get("$url/product.category/search",
          queryParameters: {"token": token});
      log('link ${"$url/product.category/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(AssetModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, AssetModel>> getResourceItem(
      AssetItem category) async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var callUrl = "$url/product.product/search";
      var domain = {
        "token": token,
        "domain": "[('categ_id','=',${category.id})]",
        "fields":"['id','name','uom_id']"
      };
      var response = await dio.get(callUrl, queryParameters: domain);
      log('link ${"$url/product.product/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(AssetModel.fromJson({"items": data[0]}));
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
  Future<Either<ResultState, GroupAssignmentModel>> groupAssignmentAdd(
      {AssetItem? category,
      AssetItem? location,
      String? selectedTeamOrUser,
      String? selectedOpenDate,
      String? selectedDueDate,
      AssetItem? selectedAssignTo,
      String? selectedJobType,
      String? selectedJobPriority,
      AssetItem? selectedAsset,
      AssetItem? selectedJobActivity,
      String? description}) async {
    var dio = _network.getDio();
    print("$category $location");
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var callUrl = "$url/amtiss.assignment/assignment/create";
      var domain = selectedTeamOrUser == 'team'
          ? {
              "token": token,
              "create_vals": json.encode({
                'location_id': location!.id.toString(),
                'category_id': category!.id.toString(),
                'asset_id': selectedAsset!.id.toString(),
                'assignment_date': selectedOpenDate,
                'due_date': selectedDueDate,
                'maintenance_type': selectedJobType,
                'activity_id': selectedJobActivity!.id.toString(),
                'user_group': selectedTeamOrUser,
                'groups_id': [selectedAssignTo!.id],
                'priority': selectedJobPriority,
                'description': description
              })
            }
          : {
              "token": token,
              "create_vals": json.encode({
                'location_id': location!.id.toString(),
                'category_id': category!.id.toString(),
                'asset_id': selectedAsset!.id.toString(),
                'assignment_date': selectedOpenDate,
                'due_date': selectedDueDate,
                'maintenance_type': selectedJobType,
                'activity_id': selectedJobActivity!.id.toString(),
                'user_group': selectedTeamOrUser,
                'assign_to': [selectedAssignTo!.id],
                'priority': selectedJobPriority,
                'description': description
              })
            };
      var response = await dio.get(callUrl, queryParameters: domain);
      log('link ${"$url/res.groups/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(GroupAssignmentModel.fromJson(data[0]));
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
  Future<Either<ResultState, GroupAssignmentModel>> reportsAdd(
      {List<String>? reportList}) async {
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var callUrl = "$url/amtiss.assignment.report/assignment/create_line";
      var response = await dio.get('$callUrl?token=$token&create_vals=$reportList');
      log('link ${"$url/res.groups/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(GroupAssignmentModel.fromJson(data[0]));
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
  Future<Either<ResultState, GroupAssignmentModel>> resourcesAdd({List<String>? resourceList}) async{
    var dio = _network.getDio();
    try {
      var url = await getBaseUrl();
      var token = await getToken();
      var callUrl = "$url/amtiss.assignment.product/assignment/create_line";
      var response = await dio.get('$callUrl?token=$token&create_vals=$resourceList');
      log('link ${"$url/res.groups/search"}');
      log('token $token');
      if (response.statusCode == 200) {
        var data = jsonDecode(response.data);
        if (jsonDecode(response.data).toString().contains("error")) {
          return left(
            ResultState.error(jsonDecode(response.data).toString()),
          );
        }
        return right(GroupAssignmentModel.fromJson(data[0]));
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
