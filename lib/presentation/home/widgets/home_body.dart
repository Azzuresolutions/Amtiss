import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:amtiss/presentation/home/widgets/header_filter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/work/work_bloc.dart';
import '../../../application/work_filter/work_filter_cubit.dart';
import '../../../components/components.dart';
import '../../../domain/work/models/work_result.dart';
import '../../../infrastructure/core/common_functions.dart';
import '../../../shared/app_color.dart';
import '../../../shared/app_router.dart';

class HomeBody extends StatelessWidget {
  final WorkState state;
  final WorkFilterState stateFilter;
  final Map<String, List<WorkOrder>> value;
  const HomeBody({
    Key? key,
    required this.stateFilter,
    required this.state,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
              height: 40,
              width: double.maxFinite,
              child: ListView(
                padding: EdgeInsets.only(left: 10, right: 10),
                scrollDirection: Axis.horizontal,
                children: [
                  HeaderFilter(
                    filters: stateFilter.statuses,
                    type: WorkFilterType.status,
                  ),
                  HeaderFilter(
                    filters: stateFilter.activities,
                    type: WorkFilterType.activity,
                  ),
                  HeaderFilter(
                    filters: stateFilter.priorities,
                    type: WorkFilterType.priority,
                  ),
                ],
              )),
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async {
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
              context.read<WorkBloc>().add(WorkEvent.get());
            },
            child: ListView.separated(
              padding: EdgeInsets.all(20),
              separatorBuilder: (context, index) => SizedBox(height: 35),
              itemCount: value.keys.length,
              itemBuilder: (_, index) {
                var dataParent = value.values.elementAt(index);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H2Atm(
                      value.keys.elementAt(index),
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        // color: C
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 12),
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 18),
                      itemCount: dataParent.length,
                      itemBuilder: (context, index) {
                        var data = dataParent[index];
                        return InkWell(
                          onTap: () {
                            AutoRouter.of(context)
                                .push(WorkDetailRoute(work: data));
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  H2Atm(
                                    DateFormat("MMM")
                                        .format(data.openDate ?? DateTime.now())
                                        .substring(0, 2),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  H2Atm(
                                    DateFormat("dd").format(
                                        data.openDate ?? DateTime.now()),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      // color: C
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 28),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 16,
                                  ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          H2Atm(
                                            data.woName ?? "",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              // color: C
                                            ),
                                          ),
                                          Spacer(),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 12, vertical: 6),
                                            decoration: BoxDecoration(
                                              color: getPriorityColor(
                                                  data.priority ?? ""),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            child: H3Atm(
                                              (data.priority ?? "")
                                                  .toCapitalized(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      H2Atm(
                                        data.assetName ?? "",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      H2Atm(
                                        data.activity ?? "",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      H2Atm(
                                        (data.status ?? "").toCapitalized(),
                                        style: TextStyle(
                                          color: AppColors.primary,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
