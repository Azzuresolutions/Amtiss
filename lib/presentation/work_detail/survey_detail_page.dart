import 'dart:collection';

import 'package:amtiss/application/survery/question_bloc.dart';
import 'package:amtiss/application/survery/survey_bloc.dart';
import 'package:amtiss/application/survey_detail/survey_detail_bloc.dart';
import 'package:amtiss/application/work_detail/work_detail_bloc.dart';
import 'package:amtiss/domain/survey/models/report_detail.dart';
import 'package:amtiss/domain/survey/models/survey_result.dart';
import 'package:amtiss/domain/work/models/work_result.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:amtiss/presentation/work_detail/survey_detail_photos.dart';
import 'package:amtiss/shared/app_color.dart';
import 'package:amtiss/shared/injection/injector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../components/components.dart';
import '../../generated/locale_keys.g.dart';
import '../../infrastructure/core/common_functions.dart';

class SurveyDetailPage extends StatelessWidget with AutoRouteWrapper {
  final WorkOrder work;
  final SurveyOrder surveyOrder;
  List<ReportDetailQuestion> reportQuestion = [];

  SurveyDetailPage({
    Key? key,
    required this.work,
    required this.surveyOrder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SurveyDetailBloc, SurveyDetailState>(
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
            "Reports",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: DefaultTabController(
          length: 2,
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
                    text: "Photos",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    _buildDetailTab(context),
                    SurveyPhotos(surveyOrder.id),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailTab(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: 32,
              child: BlocBuilder<SurveyDetailBloc, SurveyDetailState>(
                builder: (context, state) {
                  return ListView(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...CommonData.report_statuses
                          .map((e) => InkWell(
                                onTap: () async {
                                  var res = await showModalBottomSheet<bool>(
                                    context: context,
                                    builder: (v) {
                                      return Container(
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
                                              color:
                                                  Colors.grey.withOpacity(0.2),
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
                                              "${LocaleKeys.change_report_status_to.tr()} ${e.name.replaceAll("_", " ").toCapitalized()}?",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 25,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 40),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
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
                                                          AutoRouter.of(context)
                                                              .pop(false),
                                                      child: H3Atm(
                                                        "Cancel",
                                                        style: TextStyle(
                                                          color: Colors.white,
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
                                                          AutoRouter.of(context)
                                                              .pop(true),
                                                      style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all(
                                                          AppColors.primary,
                                                        ),
                                                      ),
                                                      child: H3Atm(
                                                        "Yes",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                  if (res ?? false) {
                                    if (work.woId == null) return;
                                    context.read<SurveyDetailBloc>().add(
                                          SurveyDetailEvent.update(
                                            id: surveyOrder.id.toString(),
                                            status: e.name,
                                          ),
                                        );
                                  }
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 6),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 6),
                                  decoration: BoxDecoration(
                                    color: getReportHighOrderColor(
                                        state.statusState, e),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: H3Atm(
                                    e.name.replaceAll("_", " ").toCapitalized(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ],
                  );
                },
              ),
            ),
          ),
          ..._buildTopSection(),
          // SizedBox(
          //   height: 100,
          // ),
        ],
      ),
    );
  }

  Widget _buildPhotosTab(BuildContext context, int? id) {
    return SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }

  List<Widget> _buildTopSection() {
    return [
      Container(
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
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: H2Atm(
                surveyOrder.surveyId![1] ?? "Report Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _buildRow("WO ID", work.woName ?? "-"),
            SizedBox(
              height: 10,
            ),
            _buildRow("Asset", work.asset ?? "-"),
            SizedBox(
              height: 10,
            ),
            _buildRow("Reported By", surveyOrder.userId![1] ?? "-"),
            // TODO Reported By ??
            SizedBox(
              height: 10,
            ),
            // TODO start is -> openDate
            _buildRow(
              "Start",
              surveyOrder.startDatetime != null
                  ? DateFormat("dd/mm/yyyy, hh:mm:ss")
                      .format(surveyOrder.startDatetime!)
                  : "-",
            ),
            SizedBox(
              height: 10,
            ),
            // TODO end is -> dueDate
            _buildRow(
              "End",
              surveyOrder.endDatetime != null
                  ? DateFormat("dd/mm/yyyy, hh:mm:ss")
                      .format(surveyOrder.endDatetime!)
                  : "-",
            ),
            SizedBox(
              height: 10,
            ),
            // TODO total Hr will be counted as from
            _buildRow(
              "Total Hours",
              (surveyOrder.startDatetime != null &&
                      surveyOrder.endDatetime != null)
                  ? surveyOrder.endDatetime!
                          .difference(surveyOrder.startDatetime!)
                          .inHours
                          .toString()
                          .padLeft(2, "0") +
                      ":" +
                      surveyOrder.endDatetime!
                          .difference(surveyOrder.startDatetime!)
                          .inMinutes
                          .toString()
                          .padLeft(2, "0") +
                      " Hrs"
                  : "-",
            ),
          ],
        ),
      ),
      BlocBuilder<QuestionBloc, QuestionState>(
        builder: (context, state) {
          state.state.maybeWhen(
              success: (reportQuestion) {
                if (reportQuestion != null) {
                  this.reportQuestion = reportQuestion;
                }
              },
              loading: () {
                return Center(child: CircularProgressIndicator());
              },
              orElse: () {});

          var groupingQuestionHasMap = <int, List<ReportDetailQuestion>>{};

          reportQuestion.sort(
              (a, b) => a.questionSequence!.compareTo(b.questionSequence!));
          for (var element in reportQuestion) {
            var pageId = element.pageId![0];
            var newQuestions = <ReportDetailQuestion>[];
            if (groupingQuestionHasMap.containsKey(pageId)) {
              newQuestions =
                  groupingQuestionHasMap[pageId] as List<ReportDetailQuestion>;
            }
            newQuestions.add(element);
            newQuestions.sort(
                (a, b) => a.questionSequence!.compareTo(b.questionSequence!));
            groupingQuestionHasMap.putIfAbsent(pageId, () => newQuestions);
          }
          // groupingQuestionHasMap.forEach((key, value) {
          //   value.sort(
          //       (a, b) => a.questionSequence!.compareTo(b.questionSequence!));
          // });

          print(groupingQuestionHasMap);

          return Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 14),
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
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
                (groupingQuestionHasMap.values.isEmpty)
                    ? Container(
                        width: double.infinity,
                        child: Center(child: Text("No Questions")),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: groupingQuestionHasMap.length,
                        itemBuilder: (context, index) {
                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: H2Atm(
                                    groupingQuestionHasMap.values
                                            .elementAt(index)
                                            .elementAt(0)
                                            .pageId![1] ??
                                        "Page Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: groupingQuestionHasMap.values
                                      .elementAt(index)
                                      .length,
                                  itemBuilder: (context, index1) {
                                    return Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 5,
                                                child: Text(
                                                  groupingQuestionHasMap.values
                                                      .elementAt(index)[index1]
                                                      .questionId![1],
                                                  style: TextStyle(
                                                    color: Color(0xff333333)
                                                        .withOpacity(0.5),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Text(
                                                  groupingQuestionHasMap.values
                                                      .elementAt(index)[index1]
                                                      .result
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                )
                              ]);
                        },
                      ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8.0),
                //   child: H2Atm(
                //     surveyOrder.surveyId![1] ?? "Page Name",
                //     style: TextStyle(
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 8.0),
                //   child: Row(
                //     children: [
                //       H2Atm(
                //         "Activity: ",
                //         style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //       H2Atm(
                //         work.activity ?? "",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, color: Colors.red),
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // (reportQuestion.first.id == null)
                //     ? _buildRow("WO ID", "")
                //     : _buildRow("WO ID", reportQuestion.first.id.toString()),
                // SizedBox(
                //   height: 10,
                // ),
                // _buildRow("Asset", work.asset ?? "-"),
                // SizedBox(
                //   height: 10,
                // ),
                // _buildRow("Reported By", work.request ?? "-"),
                // // TODO Reported By ??
                // SizedBox(
                //   height: 10,
                // ),
                // // TODO start is -> openDate
                // _buildRow(
                //   "Start",
                //   work.openDate != null
                //       ? DateFormat("dd/mm/yyyy, hh:mm:ss")
                //           .format(work.openDate!)
                //       : "-",
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // // TODO end is -> dueDate
                // _buildRow(
                //   "End",
                //   work.dueDate != null
                //       ? DateFormat("dd/mm/yyyy, hh:mm:ss").format(work.dueDate!)
                //       : "-",
                // ),
                // SizedBox(
                //   height: 10,
                // ),
                // // TODO total Hr will be counted as from
                // _buildRow(
                //   "Total Hours",
                //   (work.openDate != null && work.dueDate != null)
                //       ? work.openDate!
                //               .difference(work.dueDate!)
                //               .inHours
                //               .toString()
                //               .padLeft(2, "0") +
                //           " Hrs"
                //       : "-",
                // ),
              ],
            ),
          );
        },
      ),
    ];
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
      create: (context) => getIt<SurveyDetailBloc>()
        ..add(
            SurveyDetailEvent.started(surveyOrder.state?.toLowerCase() ?? "")),
      child: this,
    );
  }
}
