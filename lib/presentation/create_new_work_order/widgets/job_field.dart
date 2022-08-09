import 'package:amtiss/domain/work/models/category_model.dart';
import 'package:amtiss/infrastructure/core/common_data.dart';
import 'package:amtiss/infrastructure/core/common_functions.dart';
import 'package:flutter/material.dart';

import '../../../components/components.dart';

class JobFieldDropDown extends StatelessWidget {
  final String title, selectedItemText;
  final List<JobField> itemList;
  final Function(String value) onItemTap;
  final bool isDateSelection;
  final bool enable;

  const JobFieldDropDown(
      {Key? key,
      required this.title,
      required this.itemList,
      required this.selectedItemText,
      required this.onItemTap,
      this.enable = false,
      this.isDateSelection = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: H3Atm(
            title,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
          ),
        ),
        SizedBox(width: 35),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: !enable
                ? () {}
                : isDateSelection
                    ? () => _selectDate(context)
                    : () {
                        showModalBottomSheet(
                          context: context,
                          builder: (v) {
                            return Stack(
                              children: [
                                ListView.separated(
                                  itemCount: itemList.length,
                                  separatorBuilder: (_, __) => Divider(),
                                  itemBuilder: (_, index) {
                                    var data = itemList[index];
                                    return ListTile(
                                      onTap: () => onItemTap(data.defaultText),
                                      title:
                                          H3Atm(data.defaultText.toTitleCase()),
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
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: H3Atm(selectedItemText, style: TextStyle(color: Colors.grey))),
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
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null) {
        onItemTap(picked.toIso8601String());
    }
  }
}
