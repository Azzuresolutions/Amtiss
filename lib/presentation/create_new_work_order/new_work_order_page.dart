import 'dart:collection';

import 'package:amtiss/application/new_work_order/new_work_order_detail_bloc.dart';
import 'package:amtiss/application/new_work_order/new_work_order_report_bloc.dart';
import 'package:amtiss/application/new_work_order/new_work_order_resources_bloc.dart';
import 'package:amtiss/components/components.dart';
import 'package:amtiss/components/primary_text_field_with_controller.dart';
import 'package:amtiss/domain/survey/models/survey_result.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:amtiss/infrastructure/core/common_functions.dart';
import 'package:amtiss/presentation/create_new_work_order/widgets/asset_field.dart';
import 'package:amtiss/presentation/create_new_work_order/widgets/job_field.dart';
import 'package:amtiss/shared/app_color.dart';
import 'package:amtiss/shared/injection/injector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewWorkOrderPage extends StatefulWidget {
  const NewWorkOrderPage({
    Key? key,
  }) : super(key: key);

  @override
  State<NewWorkOrderPage> createState() => _NewWorkOrderPageState();
}

class _NewWorkOrderPageState extends State<NewWorkOrderPage>
    with AutoRouteWrapper, TickerProviderStateMixin {
  HashMap<String, List<SurveyOrder>> surveyAll = HashMap();

  List<SurveyOrder> survey = [];

  List<SurveyOrder> surveyList = [];
  bool view = false;
  int? pdfId;
  List<bool> isCheck = [];

  TabController? _tabController;
  Animation<double>? _animation;
  AnimationController? _animationController;

  TextEditingController quantityController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void didChangeDependencies() {
    context
        .read<NewWorkOrderDetailBloc>()
        .add(NewWorkOrderDetailEvent.getCategory());

    super.didChangeDependencies();
  }

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3);
    _tabController!.addListener(() {
      if (_tabController!.index == 1) {
        context
            .read<NewWorkOrderReportBloc>()
            .add(NewWorkOrderReportEvent.getReports());
      }
      if (_tabController!.index == 2) {
        context
            .read<NewWorkOrderResourcesBloc>()
            .add(NewWorkOrderResourcesEvent.getResourceCategory());
      }
    });
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController!);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  void dispose() {
    isCheck = [];
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              controller: _tabController,
              onTap: (index) {
                if (index == 1) {
                  context
                      .read<NewWorkOrderReportBloc>()
                      .add(NewWorkOrderReportEvent.getReports());
                }
                if (index == 2) {
                  context
                      .read<NewWorkOrderResourcesBloc>()
                      .add(NewWorkOrderResourcesEvent.getResourceCategory());
                }
              },
              tabs: [
                Tab(
                  text: "Details",
                ),
                Tab(
                  text: "Reports",
                ),
                Tab(
                  text: "Resources",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildDetailsPage(),
                  _buildReportPage(),
                  _buildResourcePage(),
                ],
                controller: _tabController,
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildDetailsPage() {
    return BlocListener<NewWorkOrderDetailBloc, NewWorkOrderDetailState>(
      listener: (context, state) {
        state.state.maybeWhen(
          loading: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
          success: (v) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Work Order Uploaded Successfully",
                ),
              ),
            );
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
        floatingActionButton:
            BlocBuilder<NewWorkOrderDetailBloc, NewWorkOrderDetailState>(
          builder: (context, state) {
            return FloatingActionBubble(
              iconData: Icons.add,
              items: [
                Bubble(
                  title: "Clear Form",
                  iconColor: Colors.transparent,
                  bubbleColor: AppColors.primary,
                  icon: Icons.add,
                  titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  onPress: () {
                    context
                        .read<NewWorkOrderDetailBloc>()
                        .add(NewWorkOrderDetailEvent.onClearForm());
                    context
                        .read<NewWorkOrderDetailBloc>()
                        .add(NewWorkOrderDetailEvent.getCategory());
                    _animationController!.reverse();
                  },
                ),
                Bubble(
                  title: "Save",
                  iconColor: Colors.transparent,
                  bubbleColor: AppColors.primary,
                  icon: Icons.add,
                  titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  onPress: () {
                    if (state.selectedAsset.id == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Please select asset",
                          ),
                        ),
                      );
                    } else if (state.selectedAssignTo.id == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Please select assign to",
                          ),
                        ),
                      );
                    } else {
                      context
                          .read<NewWorkOrderDetailBloc>()
                          .add(NewWorkOrderDetailEvent.onGroupAssignmentAdd());
                      descriptionController.clear();
                    }
                    _animationController!.reverse();
                  },
                ),
              ],
              animation: _animation!,
              onPress: () => _animationController!.isCompleted
                  ? _animationController!.reverse()
                  : _animationController!.forward(),
              iconColor: Colors.white,
              backGroundColor: AppColors.primary,
            );
          },
        ),
        body: Container(
          padding: EdgeInsets.only(top: 18, left: 28, right: 42),
          child: BlocBuilder<NewWorkOrderDetailBloc, NewWorkOrderDetailState>(
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2Atm(
                      "Assets",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Divider(thickness: 2),
                    SizedBox(height: 10),
                    AssetField(
                      title: 'Category',
                      itemList: state.category,
                      selectedItemText: state.selectedCategory.name == null ||
                              state.selectedCategory.name!.isEmpty
                          ? "Select"
                          : state.selectedCategory.name!,
                      enable: true,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onCategorySelect(value));
                        context
                            .read<NewWorkOrderDetailBloc>()
                            .add(NewWorkOrderDetailEvent.getLocation());
                      },
                    ),
                    SizedBox(height: 15),
                    AssetField(
                      title: 'Location',
                      itemList: state.locations,
                      selectedItemText: state.selectedLocation.name == null ||
                              state.selectedLocation.name!.isEmpty
                          ? "Select"
                          : state.selectedLocation.name!,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onLocationSelect(value));
                        context
                            .read<NewWorkOrderDetailBloc>()
                            .add(NewWorkOrderDetailEvent.getAssets());
                      },
                    ),
                    SizedBox(height: 15),
                    AssetField(
                      title: 'Asset',
                      itemList: state.assets,
                      selectedItemText: state.selectedAsset.name == null ||
                              state.selectedAsset.name!.isEmpty
                          ? "Select"
                          : state.selectedAsset.name!,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context
                            .read<NewWorkOrderDetailBloc>()
                            .add(NewWorkOrderDetailEvent.onAssetSelect(value));

                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.getJobType(
                                CommonData.job_type));
                      },
                    ),
                    SizedBox(height: 15),
                    H2Atm(
                      "Job",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Divider(thickness: 2),
                    SizedBox(height: 10),
                    JobFieldDropDown(
                      title: 'Type',
                      itemList: state.jobTypes,
                      selectedItemText: state.selectedJobType.isEmpty
                          ? "Select"
                          : state.selectedJobType,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onJobTypeSelect(value));
                        context
                            .read<NewWorkOrderDetailBloc>()
                            .add(NewWorkOrderDetailEvent.getJobActivities());
                      },
                    ),
                    SizedBox(height: 15),
                    AssetField(
                      title: 'Activity',
                      itemList: state.jobActivities,
                      selectedItemText:
                          state.selectedJobActivity.name == null ||
                                  state.selectedJobActivity.name!.isEmpty
                              ? "Select"
                              : state.selectedJobActivity.name!,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onJobActivitySelect(value));
                      },
                    ),
                    SizedBox(height: 15),
                    JobFieldDropDown(
                      title: 'Open date',
                      itemList: [],
                      selectedItemText: state.selectedOpenDate.isEmpty
                          ? "Select"
                          : DateFormat("yyyy-MM-dd")
                              .format(DateTime.parse(state.selectedOpenDate)),
                      isDateSelection: true,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        print(value);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onOpenDateSelect(
                                DateFormat("yyyy-MM-dd hh:mm:ss")
                                    .format(DateTime.parse(value))));
                      },
                    ),
                    SizedBox(height: 15),
                    JobFieldDropDown(
                      title: 'Due date',
                      itemList: [],
                      selectedItemText: state.selectedDueDate.isEmpty
                          ? "Select"
                          : DateFormat("yyyy-MM-dd")
                              .format(DateTime.parse(state.selectedDueDate)),
                      isDateSelection: true,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onDueDateSelect(
                                DateFormat("yyyy-MM-dd hh:mm:ss")
                                    .format(DateTime.parse(value))));
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.getJobPriority(
                                CommonData.job_priority));
                      },
                    ),
                    SizedBox(height: 15),
                    JobFieldDropDown(
                      title: 'Priority',
                      itemList: state.jobPriority,
                      selectedItemText: state.selectedJobPriority.isEmpty
                          ? "Select"
                          : state.selectedJobPriority,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onJobPrioritySelect(value));

                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.getAssignmentTeamOrUser(
                                CommonData.teamOrUser));
                      },
                    ),
                    SizedBox(height: 15),
                    H2Atm(
                      "Assignment",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    Divider(thickness: 2),
                    SizedBox(height: 10),
                    JobFieldDropDown(
                      title: 'Team/User',
                      itemList: state.assignmentTeamOrUser,
                      selectedItemText:
                          state.selectedAssignmentTeamOrUser.isEmpty
                              ? "Select"
                              : state.selectedAssignmentTeamOrUser,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onTeamOrUserSelect(value));
                        context
                            .read<NewWorkOrderDetailBloc>()
                            .add(NewWorkOrderDetailEvent.getAssignTo());
                      },
                    ),
                    SizedBox(height: 10),
                    AssetField(
                      title: 'Assign To',
                      itemList: state.assignTo,
                      selectedItemText: state.selectedAssignTo.name == null ||
                              state.selectedAssignTo.name!.isEmpty
                          ? "Select"
                          : state.selectedAssignTo.name!,
                      enable: state.selectedCategory.name == null ||
                          state.selectedCategory.name!.isNotEmpty,
                      onItemTap: (value) {
                        Navigator.pop(context);
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onAssignToSelect(value));
                      },
                    ),
                    SizedBox(height: 15),
                    H2Atm(
                      "Description",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    SizedBox(height: 10),
                    PrimaryTextFieldWithController(
                      controller: descriptionController,
                      labelText: "Description",
                      withoutLabel: true,
                      onChanged: (v) {
                        context.read<NewWorkOrderDetailBloc>().add(
                            NewWorkOrderDetailEvent.onDescriptionChanged(v));
                        // user = v;
                        print(v);
                      },
                    ),
                    SizedBox(height: 70),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  _buildReportPage() {
    return BlocListener<NewWorkOrderReportBloc, NewWorkOrderReportState>(
      listener: (context, state) {
        state.state.maybeWhen(
          loading: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
          success: (v) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Report Uploaded Successfully",
                ),
              ),
            );
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
        floatingActionButton:
            BlocBuilder<NewWorkOrderDetailBloc, NewWorkOrderDetailState>(
          builder: (context, state) {
            return FloatingActionBubble(
              iconData: Icons.add,
              items: [
                Bubble(
                  title: "Clear Form",
                  iconColor: Colors.transparent,
                  bubbleColor: AppColors.primary,
                  icon: Icons.add,
                  titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  onPress: () {
                    context
                        .read<NewWorkOrderReportBloc>()
                        .add(NewWorkOrderReportEvent.onClearReportForm());
                    context
                        .read<NewWorkOrderReportBloc>()
                        .add(NewWorkOrderReportEvent.getReports());
                    _animationController!.reverse();
                  },
                ),
                Bubble(
                  title: "Save",
                  iconColor: Colors.transparent,
                  bubbleColor: AppColors.primary,
                  icon: Icons.add,
                  titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  onPress: () {
                    context.read<NewWorkOrderReportBloc>().add(
                        NewWorkOrderReportEvent.onReportsSubmit(
                            state.uploadedAssignmentId));
                    context
                        .read<NewWorkOrderReportBloc>()
                        .add(NewWorkOrderReportEvent.getReports());
                    _animationController!.reverse();
                  },
                ),
              ],
              animation: _animation!,
              onPress: () => _animationController!.isCompleted
                  ? _animationController!.reverse()
                  : _animationController!.forward(),
              iconColor: Colors.white,
              backGroundColor: AppColors.primary,
            );
          },
        ),
        body: Container(
          padding: EdgeInsets.only(top: 18, left: 28, right: 42),
          child: BlocBuilder<NewWorkOrderReportBloc, NewWorkOrderReportState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H2Atm(
                    "Add Reports",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  Divider(thickness: 2),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (v) {
                          return Stack(
                            children: [
                              ListView.separated(
                                itemCount: state.reports.length,
                                separatorBuilder: (_, __) => Divider(),
                                itemBuilder: (_, index) {
                                  var data = state.reports[index];
                                  return ListTile(
                                    onTap: () {
                                      Navigator.pop(context);
                                      context
                                          .read<NewWorkOrderReportBloc>()
                                          .add(NewWorkOrderReportEvent
                                              .onReportSelect(data));
                                    },
                                    title: H3Atm(data.title!.toTitleCase()),
                                    trailing: Icon(
                                      Icons.circle_outlined,
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        border: Border.fromBorderSide(
                          BorderSide(
                            color: Colors.grey.withOpacity(
                              0.5,
                            ),
                          ),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          H2Atm(state.selectedReports.title ?? "Select",
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: SizedBox(
                              height: 15,
                              width: 15,
                              child: RotatedBox(
                                quarterTurns: 3,
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        if (state.selectedReports.id != null) {
                          context.read<NewWorkOrderReportBloc>().add(
                                NewWorkOrderReportEvent.onReportAdd(
                                    state.selectedReports),
                              );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please select report",
                              ),
                            ),
                          );
                        }
                      },
                      child: Builder(builder: (context) {
                        return H2Atm(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                      // shrinkWrap: true,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          Container(
                            // padding: EdgeInsets.all(15),
                            margin: EdgeInsets.only(top: 10, right: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                ),
                                Expanded(
                                    child: Center(
                                        child: H2Atm(
                                  state.addedReports[index].title!,
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ))),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  context.read<NewWorkOrderReportBloc>().add(
                                      NewWorkOrderReportEvent.onReportRemove(
                                          state.addedReports[index]));
                                  setState(() {});
                                },
                                child: CircleAvatar(
                                    child: Icon(
                                      Icons.clear,
                                      size: 10,
                                    ),
                                    backgroundColor: Colors.red,
                                    radius: 10),
                              )),
                        ],
                      ),
                      itemCount: state.addedReports.length,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  _buildResourcePage() {
    return BlocListener<NewWorkOrderResourcesBloc, NewWorkOrderResourcesState>(
      listener: (context, state) {
        state.state.maybeWhen(
          loading: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
          success: (v) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Resources Uploaded Successfully",
                ),
              ),
            );
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
        floatingActionButton:
            BlocBuilder<NewWorkOrderDetailBloc, NewWorkOrderDetailState>(
          builder: (context, state) {
            return FloatingActionBubble(
              iconData: Icons.add,
              items: [
                Bubble(
                  title: "Clear Form",
                  iconColor: Colors.transparent,
                  bubbleColor: AppColors.primary,
                  icon: Icons.add,
                  titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  onPress: () {
                    context
                        .read<NewWorkOrderResourcesBloc>()
                        .add(NewWorkOrderResourcesEvent.onClearResourceForm());
                    context
                        .read<NewWorkOrderResourcesBloc>()
                        .add(NewWorkOrderResourcesEvent.getResourceCategory());
                    _animationController!.reverse();
                  },
                ),
                Bubble(
                  title: "Save",
                  iconColor: Colors.transparent,
                  bubbleColor: AppColors.primary,
                  icon: Icons.add,
                  titleStyle: TextStyle(fontSize: 16, color: Colors.white),
                  onPress: () {
                    context.read<NewWorkOrderResourcesBloc>().add(
                        NewWorkOrderResourcesEvent.onResourceSubmit(
                            state.uploadedAssignmentId));
                    _animationController!.reverse();
                  },
                ),
              ],
              animation: _animation!,
              onPress: () => _animationController!.isCompleted
                  ? _animationController!.reverse()
                  : _animationController!.forward(),
              iconColor: Colors.white,
              backGroundColor: AppColors.primary,
            );
          },
        ),
        body: Container(
          padding: EdgeInsets.only(top: 18, left: 28, right: 42),
          child: BlocBuilder<NewWorkOrderResourcesBloc,
              NewWorkOrderResourcesState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H2Atm(
                    "Add Resources",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  Divider(thickness: 2),
                  SizedBox(height: 10),
                  AssetField(
                    title: 'Category',
                    itemList: state.resourceCategories,
                    selectedItemText:
                        state.selectedResourceCategory.name == null ||
                                state.selectedResourceCategory.name!.isEmpty
                            ? "Select"
                            : state.selectedResourceCategory.name!,
                    enable: true,
                    onItemTap: (value) {
                      Navigator.pop(context);
                      context.read<NewWorkOrderResourcesBloc>().add(
                          NewWorkOrderResourcesEvent.onResourceCategorySelect(
                              value));
                      context
                          .read<NewWorkOrderResourcesBloc>()
                          .add(NewWorkOrderResourcesEvent.getResourceItem());
                    },
                  ),
                  SizedBox(height: 15),
                  AssetField(
                    title: 'Items',
                    itemList: state.resourceItems,
                    selectedItemText:
                        state.selectedResourceItems.name == null ||
                                state.selectedResourceItems.name!.isEmpty
                            ? "Select"
                            : state.selectedResourceItems.name!,
                    enable: true,
                    onItemTap: (value) {
                      Navigator.pop(context);
                      context.read<NewWorkOrderResourcesBloc>().add(
                          NewWorkOrderResourcesEvent.onResourceItemSelect(
                              value));
                    },
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Expanded(
                        child: H3Atm(
                          "Quantity",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          width: 120,
                          child: PrimaryTextFieldWithController(
                            controller: quantityController,
                            labelText: "",
                            withoutLabel: true,
                            onChanged: (v) {
                              context.read<NewWorkOrderResourcesBloc>().add(
                                  NewWorkOrderResourcesEvent.onQuantityChanged(
                                      v));
                              // user = v;
                              print(v);
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      H2Atm(
                        state.selectedResourceItems.uomId == null
                            ? ""
                            : state.selectedResourceItems.uomId![1] ?? "",
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        if (state.selectedResourceCategory.id == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please select category",
                              ),
                            ),
                          );
                        } else if (state.selectedResourceItems.id == null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please select items",
                              ),
                            ),
                          );
                        } else if (state.quantity.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                "Please enter quantity",
                              ),
                            ),
                          );
                        } else {
                          context.read<NewWorkOrderResourcesBloc>().add(
                              NewWorkOrderResourcesEvent.onResourceSelect());
                          context
                              .read<NewWorkOrderResourcesBloc>()
                              .add(NewWorkOrderResourcesEvent.onResourceAdd());
                          FocusScope.of(context).unfocus();
                        quantityController.clear();
                        }
                      },
                      child: Builder(builder: (context) {
                        return H2Atm(
                          "Add",
                          style: TextStyle(color: Colors.white),
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                      // shrinkWrap: true,
                      itemBuilder: (context, index) => Stack(
                        children: [
                          Container(
                            // padding: EdgeInsets.all(15),
                            margin: EdgeInsets.only(top: 10, right: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Container(
                                  height: 70,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10))),
                                ),
                                Expanded(
                                    child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        H2Atm(
                                          state.addedResources[index].category!
                                              .name!,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900),
                                        ),
                                        H3Atm(
                                          state.addedResources[index].item!
                                              .name!,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        H1Atm(
                                          state.addedResources[index].quantity!,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900),
                                        ),
                                        H3Atm(
                                          state.addedResources[index].item!.uomId![1],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {
                                  context.read<NewWorkOrderResourcesBloc>().add(
                                      NewWorkOrderResourcesEvent
                                          .onResourceRemove(
                                              state.addedResources[index]));
                                  setState(() {});
                                },
                                child: CircleAvatar(
                                    child: Icon(
                                      Icons.clear,
                                      size: 10,
                                    ),
                                    backgroundColor: Colors.red,
                                    radius: 10),
                              )),
                        ],
                      ),
                      itemCount: state.addedResources.length,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NewWorkOrderDetailBloc>()
            ..add(NewWorkOrderDetailEvent.getLocation()),
        ),
        BlocProvider(
          create: (context) => getIt<NewWorkOrderReportBloc>()
            ..add(NewWorkOrderReportEvent.getReports()),
        ),
      ],
      child: widget,
    );
  }
}
