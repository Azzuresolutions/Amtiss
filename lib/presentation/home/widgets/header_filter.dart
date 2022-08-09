import 'package:amtiss/infrastructure/core/common_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/work_filter/work_filter_cubit.dart';
import '../../../components/components.dart';
import '../../../infrastructure/core/common_data.dart';
import '../../../shared/app_color.dart';

class HeaderFilter extends StatelessWidget {
  final List<WorkFilter> filters;
  final WorkFilterType type;
  const HeaderFilter({Key? key, required this.filters, required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var getSelecteds = filters.where(
      (x) => x.defaultSelected,
    );
    var selectedTexts = getSelecteds.map((e) => e.defaultText).join(", ");
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (v) {
            return Stack(
              children: [
                ListView.separated(
                  itemCount: filters.length,
                  separatorBuilder: (_, __) => Divider(),
                  itemBuilder: (_, index) {
                    var data = filters[index];
                    return ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        var updated = filters.map((e) {
                          if (e.defaultText.toLowerCase() ==
                              data.defaultText.toLowerCase()) {
                            return WorkFilter(
                                e.defaultText, !data.defaultSelected);
                          }
                          return WorkFilter(e.defaultText, e.defaultSelected);
                        }).toList();
                        switch (type) {
                          case WorkFilterType.status:
                            context.read<WorkFilterCubit>().populate(
                                  statuses: updated,
                                );
                            break;
                          case WorkFilterType.priority:
                            context.read<WorkFilterCubit>().populate(
                                  priorities: updated,
                                );
                            break;
                          case WorkFilterType.activity:
                            context.read<WorkFilterCubit>().populate(
                                  activities: updated,
                                );
                            break;
                          default:
                            context.read<WorkFilterCubit>().populate(
                                  priorities: updated,
                                );
                            break;
                        }
                      },
                      title: H3Atm(data.defaultText.toTitleCase()),
                      trailing: filters[index].defaultSelected
                          ? Icon(
                              Icons.circle,
                              color: AppColors.primary,
                            )
                          : Icon(
                              Icons.circle_outlined,
                            ),
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SizedBox(
                      height: 45,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          var updated = filters
                              .map((e) => WorkFilter(e.defaultText, false))
                              .toList();
                          switch (type) {
                            case WorkFilterType.status:
                              context.read<WorkFilterCubit>().populate(
                                    statuses: updated,
                                  );
                              break;
                            case WorkFilterType.priority:
                              context.read<WorkFilterCubit>().populate(
                                    priorities: updated,
                                  );
                              break;
                            case WorkFilterType.activity:
                              context.read<WorkFilterCubit>().populate(
                                    activities: updated,
                                  );
                              break;
                            default:
                              context.read<WorkFilterCubit>().populate(
                                    priorities: updated,
                                  );
                              break;
                          }
                        },
                        child: H2Atm(
                          "Clear",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            H2Atm((selectedTexts.isEmpty
                    ? "All ${type.name}"
                    : "${getSelecteds.length} ${type.name}")
                .toTitleCase()),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: SizedBox(
                height: 15,
                width: 15,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Icon(
                    Icons.chevron_left,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
