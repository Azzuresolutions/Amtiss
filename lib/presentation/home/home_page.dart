import 'package:amtiss/application/work_filter/work_filter_cubit.dart';
import 'package:amtiss/domain/work/models/work_result.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:amtiss/presentation/create_new_work_order/new_work_order_page.dart';
import 'package:amtiss/presentation/home/widgets/home_body.dart';
import 'package:amtiss/shared/app_router.dart';
import 'package:amtiss/shared/injection/injector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/bloc/auth_bloc.dart';
import '../../application/survery/survey_bloc.dart';
import '../../application/work/work_bloc.dart';
import '../../components/components.dart';

class HomePage extends StatelessWidget with AutoRouteWrapper {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        toolbarHeight: 90,
        actions: [_buildLogoutButton(context)],
        title: SizedBox(
          child: _buildSearchField(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context)
              .push(NewWorkOrderRoute());
        },
        child: Icon(Icons.add),
      ),
      body: BlocConsumer<WorkFilterCubit, WorkFilterState>(
        listener: (context, state) {
          var selActivity = state.activities.where(
            (element) => element.defaultSelected,
          );
          var selPriority = state.priorities.where(
            (element) => element.defaultSelected,
          );
          var selStatus = state.statuses.where(
            (element) => element.defaultSelected,
          );
          context.read<WorkBloc>().add(
                WorkEvent.update(
                  activity: selActivity.map((e) => e.defaultText).join(" "),
                  priority: selPriority.map((e) => e.defaultText).join(" "),
                  status: selStatus.map((e) => e.defaultText).join(" "),
                ),
              );
        },
        builder: (_, stateFilter) => BlocConsumer<WorkBloc, WorkState>(
          listener: (context, state) {
            state.state.maybeWhen(
              success: (v) {
                if (stateFilter.activities.isEmpty ||
                    stateFilter.priorities.isEmpty ||
                    stateFilter.priorities.isEmpty) {
                  context.read<WorkFilterCubit>().populate(
                        statuses: CommonData.statuses
                            .map((e) => WorkFilter(e.name, e.isSelected))
                            .toList(),
                        priorities: CommonData.priorites
                            .map((e) => WorkFilter(e.name, e.isSelected))
                            .toList(),
                        activities: (state.works.map(
                          (x) => x.activity ?? "",
                        )).toSet().map((e) => WorkFilter(e, false)).toList(),
                      );
                }
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.state.maybeWhen(
              orElse: () => Center(
                child: CircularProgressIndicator(),
              ),
              error: (v) => Center(
                child: Text(v ?? "Ups an error occured, Please try again"),
              ),
              success: (v) {
                var value = v as Map<String, List<WorkOrder>>;
                return HomeBody(
                    stateFilter: stateFilter, state: state, value: value);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return SizedBox(
      width: 60,
      child: IconButton(
        onPressed: () async {
          var res = await showDialog<bool>(
            context: context,
            builder: (v) => AlertDialog(
              title: Text("Are you sure want to logout?"),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: Text("No"),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                    Colors.red,
                  )),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Text("Yes"),
                )
              ],
            ),
          );
          if (res ?? false) {
            context.read<AuthBloc>().add(AuthEvent.loggedOut());
          }
        },
        icon: Icon(
          Icons.logout,
        ),
      ),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return BlocBuilder<WorkBloc, WorkState>(
      builder: (context, state) {
        return PrimaryTextField(
          labelText: "Find Jobs",
          hintText: "Find Jobs",
          bgColor: Colors.grey.withOpacity(0.1),
          radius: 45,
          onChanged: (v) async {
            context.read<WorkBloc>().add(WorkEvent.search(v));
          },
          prefixIcon: Icon(
            Icons.search,
          ),
          withoutLabel: true,
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<WorkBloc>()..add(WorkEvent.get()),
        ),
        BlocProvider(
          create: (context) => getIt<WorkFilterCubit>(),
        ),
      ],
      child: this,
    );
  }
}
