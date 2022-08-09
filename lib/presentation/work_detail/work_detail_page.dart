import 'dart:async';
import 'dart:collection';

import 'package:amtiss/application/survery/question_bloc.dart';
import 'package:amtiss/application/work_detail/work_detail_bloc.dart';
import 'package:amtiss/domain/survey/models/survey_result.dart';
import 'package:amtiss/domain/work/models/work_result.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:amtiss/shared/app_color.dart';
import 'package:amtiss/shared/app_router.dart';
import 'package:amtiss/shared/injection/injector.dart';
import 'package:amtiss/webviewpdf/pdfdownload.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/survery/survey_bloc.dart';
import '../../components/components.dart';
import '../../generated/locale_keys.g.dart';
import '../../infrastructure/core/common_functions.dart';

class WorkDetailPage extends StatefulWidget {
  final WorkOrder work;

  WorkDetailPage({
    Key? key,
    required this.work,
  }) : super(key: key);

  @override
  State<WorkDetailPage> createState() => _WorkDetailPageState(work);
}

class _WorkDetailPageState extends State<WorkDetailPage> with AutoRouteWrapper {
  HashMap<String, List<SurveyOrder>> surveyAll = HashMap();

  List<SurveyOrder> survey = [];

  List<SurveyOrder> surveyList = [];
  WorkOrder work;
  bool view = false;
  int? pdfId;
  List<bool> isCheck = [];

  _WorkDetailPageState(this.work);
  @override
  void dispose() {
    isCheck = [];
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback(
      (timeStamp) {
        Future.delayed(Duration(seconds: 2)).then((value) {
          view = true;
          WorkDetailEvent.started(work.status?.toLowerCase() ?? "");
          setState(() {});
        });
      },
    );
    return BlocListener<WorkDetailBloc, WorkDetailState>(
      listener: (context, state) {
        state.state.maybeWhen(
          loading: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularProgressIndicator(),
                  ],
                ),
              ),
            );
          },
          success: (v) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("Update successful")));
          },
          error: (v) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Change status Failed! : ${v ?? ""}",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            );
          },
          orElse: (() {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          }),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: Text(
            "Work Order",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                indicatorColor: AppColors.primary,
                labelColor: AppColors.primary,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "Details",
                  ),
                  Tab(
                    text: "Resources",
                  ),
                  Tab(
                    text: "Backlog",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  _buildDetailTab(context),
                  Container(),
                  Container(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailTab(BuildContext context) {
    for (int i = 0; i < work.reports!.length; i++) {
      BlocProvider.of<SurveyBloc>(context).add(SurveyEvent.get(
        surveyId: work.reports![i].surveyId,
        woId: work.woId,
      ));
    }
    return (!view)
        ? Center(child: CircularProgressIndicator())
        : SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SizedBox(
                    height: 32,
                    child: BlocBuilder<WorkDetailBloc, WorkDetailState>(
                      builder: (context, state) {
                        return ListView(
                          padding: EdgeInsets.only(left: 15, right: 15),
                          scrollDirection: Axis.horizontal,
                          children: [
                            ...CommonData.statuses
                                .map(
                                  (e) => InkWell(
                                    onTap: () async {
                                      //   context.read<SurveyDetailBloc>().add(SurveyDetailEvent.get());
                                      var res =
                                          await showModalBottomSheet<bool>(
                                        context: context,
                                        builder: (v) {
                                          return BlocProvider(
                                            create: (context) =>
                                                getIt<SurveyBloc>()
                                                  ..add(
                                                    SurveyEvent.get(),
                                                  ),
                                            child: Container(
                                              height: 200,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                      offset: Offset(0, -2),
                                                      color: Colors.black
                                                          .withOpacity(0.1),
                                                      spreadRadius: 1,
                                                      blurRadius: 5)
                                                ],
                                                border: Border(
                                                  top: BorderSide(
                                                    color: Colors.grey
                                                        .withOpacity(0.2),
                                                  ),
                                                ),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  H2Atm(
                                                    "${LocaleKeys.please_login_to_continue.tr()} ${e.name.toCapitalized()}?",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 40),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Expanded(
                                                          child: ElevatedButton(
                                                            style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                Colors.grey,
                                                              ),
                                                            ),
                                                            onPressed: () =>
                                                                AutoRouter.of(
                                                                        context)
                                                                    .pop(false),
                                                            child: H3Atm(
                                                              "Cancel",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 20,
                                                        ),
                                                        Expanded(
                                                          child: ElevatedButton(
                                                            onPressed: () =>
                                                                AutoRouter.of(
                                                                        context)
                                                                    .pop(true),
                                                            style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty
                                                                      .all(
                                                                AppColors
                                                                    .primary,
                                                              ),
                                                            ),
                                                            child: H3Atm(
                                                              "Yes",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                      if (res ?? false) {
                                        if (work.woId == null) return;
                                        context.read<WorkDetailBloc>().add(
                                              WorkDetailEvent.update(
                                                id: work.woId!,
                                                status: e.name,
                                              ),
                                            );
                                      }
                                    },
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 6),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 14, vertical: 6),
                                      decoration: BoxDecoration(
                                        color: getHighOrderColor(
                                            state.statusState.isEmpty
                                                ? work.status.toString()
                                                : state.statusState,
                                            e),
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      child: H3Atm(
                                        e.name.toCapitalized(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                _buildTopSection(),
                _buildReportSection(),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          );
  }

  Widget _buildReportSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: H2Atm(
            "Reports",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(
              BorderSide(
                width: 1.5,
                color: Colors.grey.withOpacity(0.4),
              ),
            ),
          ),
          child: (work.reports!.isEmpty)
              ? Container(
                  width: double.infinity,
                  child: Center(child: Text("No Reports")),
                )
              : ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: work.reports?.length ?? 0,
                  separatorBuilder: (_, __) => SizedBox(
                    height: 10,
                  ),
                  itemBuilder: (_, index) {
                    var data = work.reports?[index];
                    return InkWell(
                      onTap: () async {
                        if (surveyAll[work.reports![index].surveyId] != null &&
                            (surveyAll[widget.work.reports![index].surveyId]
                                    as List<SurveyOrder>)
                                .isNotEmpty) {
                          // TODO
                          var res = await showModalBottomSheet<bool>(
                            context: _,
                            builder: (v) {
                              return Container(
                                height: 600,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, -2),
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 1,
                                        blurRadius: 5)
                                  ],
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.grey.withOpacity(0.2),
                                    ),
                                  ),
                                ),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 20, right: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      H2Atm(
                                        "Select Available Reports",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      H3Atm(
                                        data?.reportName ?? "",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xffDC2F5F)),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          BlocBuilder<SurveyBloc, SurveyState>(
                                            builder: (context, state) {
                                              this.survey =
                                                  surveyAll[data!.surveyId!]!;
                                              // state.state.maybeWhen(
                                              //     success: (survey) {
                                              //       this.survey = survey;
                                              //     },
                                              //     orElse: () {});
                                              return Container(
                                                height: 224,
                                                child: ListView.builder(
                                                  physics:
                                                      BouncingScrollPhysics(),
                                                  itemCount: survey.length,
                                                  shrinkWrap: true,
                                                  itemBuilder:
                                                      (context, index) {
                                                    isCheck.add(false);
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          BlocProvider.of<
                                                                      QuestionBloc>(
                                                                  context)
                                                              .add(
                                                            QuestionEvent
                                                                .question(
                                                              id: survey[index]
                                                                  .id,
                                                            ),
                                                          );

                                                          AutoRouter.of(_).push(
                                                            SurveyDetailRoute(
                                                              work: work,
                                                              surveyOrder:
                                                                  survey[index],
                                                            ),
                                                          );
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            border:
                                                                Border.all(),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              10,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    top: 6,
                                                                    left: 10.0,
                                                                    right: 10.0,
                                                                    bottom: 6),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Expanded(
                                                                  flex: 3,
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                            .only(
                                                                        bottom:
                                                                            5.0),
                                                                    child: Row(
                                                                      children: [
                                                                        Checkbox(
                                                                            value:
                                                                                isCheck[index],
                                                                            onChanged: (val) {
                                                                              setState(() {
                                                                                pdfId = null;
                                                                                pdfId = survey[index].id;
                                                                                isCheck = [];
                                                                                for (int i = 0; i < survey.length; i++) {
                                                                                  isCheck.add(false);
                                                                                }
                                                                                isCheck[index] = true;
                                                                                print(isCheck);
                                                                              });
                                                                            }),
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Text(
                                                                                survey[index].startDatetime.toString(),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  flex: 2,
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        survey[index]
                                                                            .userId![1]
                                                                            .toString()
                                                                            .toCapitalized(),
                                                                      ),
                                                                      Text(
                                                                        survey[index]
                                                                            .state
                                                                            .toString()
                                                                            .replaceAll("_",
                                                                                " ")
                                                                            .toCapitalized(),
                                                                        style: TextStyle(
                                                                            color:
                                                                                Color(0xff32D6D8)),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        AppColors.primary),
                                              ),
                                              onPressed: () {
                                                if (pdfId != null) {
                                                  isCheck = [];
                                                  for (int i = 0;
                                                      i < survey.length;
                                                      i++) {
                                                    isCheck.add(false);
                                                  }
                                                  Navigator.pop(context);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          PdfDownload(pdfId!),
                                                    ),
                                                  );
                                                }
                                              },
                                              child: H3Atm(
                                                "Share",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }
                        // if (res ?? false) {
                        //   if (widget.work.woId == null) return;
                        //   // TODO
                        // }
                      },
                      child: Container(
                        height: 60,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.fromBorderSide(
                            BorderSide(
                              width: 1.5,
                              color: Colors.grey.withOpacity(0.2),
                            ),
                          ),
                        ),
                        child: Container(
                          height: 100,
                          margin: EdgeInsets.only(left: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            // border: Border.fromBorderSide(
                            //   BorderSide(
                            //     width: 1.5,
                            //     color: Colors.grey.withOpacity(0.4),
                            //   ),
                            // ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              H3Atm(
                                data?.reportName ?? "",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (work.reports != null &&
                                  work.reports!.isNotEmpty) ...[
                                BlocBuilder<SurveyBloc, SurveyState>(
                                  builder: (context, state) {
                                    state.state.maybeWhen(
                                        success: (surveyAll) {
                                          this.surveyAll.addAll(surveyAll);
                                          this.surveyAll.remove(null);

                                          var listOfSubReports = surveyAll[
                                              work.reports![index].surveyId];
                                          if (listOfSubReports != null) {
                                            surveyList = listOfSubReports
                                                as List<SurveyOrder>;
                                            // if (this.surveyAll.length ==
                                            //     work.reports!.length) {
                                            //   // view = true;
                                            // }
                                          }
                                        },
                                        orElse: () {});
                                    return H3Atm(
                                      surveyAll[work
                                                  .reports![index].surveyId] !=
                                              null
                                          ? (surveyAll[widget
                                                          .work
                                                          .reports![index]
                                                          .surveyId]
                                                      as List<SurveyOrder>)
                                                  .length
                                                  .toString() +
                                              " Reported"
                                          : "",

                                      // surveyList.length.toString() +
                                      //     " Reported",
                                      style: Theme.of(_)
                                          .textTheme
                                          .subtitle1!
                                          .copyWith(fontSize: 16)
                                          .copyWith(color: Colors.red),
                                    );
                                  },
                                )
                              ],
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
        )
      ],
    );
  }

  Widget _buildTopSection() {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 14),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(
            width: 1.5,
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.place),
              SizedBox(
                width: 10,
              ),
              H3Atm(
                work.assetLocation ?? "",
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: H2Atm(
              work.assetName ?? "Asset Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _buildRow("WO ID", work.woName ?? "-"),
          SizedBox(
            height: 10,
          ),
          _buildRow("Category", work.assetCategory ?? "-"),
          SizedBox(
            height: 10,
          ),
          _buildRow("Request No", work.request ?? "-"),
          SizedBox(
            height: 10,
          ),
          _buildRow(
            "Due Date",
            work.dueDate != null
                ? DateFormat("dd/MM/yyyy").format(work.dueDate!)
                : "-",
          ),
          SizedBox(
            height: 10,
          ),
          _buildRow(
            "Open Date",
            work.openDate != null
                ? DateFormat("dd/MM/yyyy").format(work.openDate!)
                : "-",
          ),
          SizedBox(
            height: 10,
          ),
          _buildRow(
            "Description",
            work.description ?? "",
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                H2Atm(
                  "Activity: ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                H2Atm(
                  work.activity ?? "",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          _buildRow(
            "Type",
            (work.type ?? "").toCapitalized(),
          ),
          SizedBox(
            height: 10,
          ),
          _buildRow(
            "Previous Trip",
            work.previousTrip ?? "",
          ),
          SizedBox(
            height: 10,
          ),
          _buildRow(
            "Assigned To",
            work.previousTrip ?? "",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Padding _buildRow(String name, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value.isEmpty ? "-" : value,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<WorkDetailBloc>()
        ..add(WorkDetailEvent.started(work.status?.toLowerCase() ?? "")),
      child: widget,
    );
  }
}
