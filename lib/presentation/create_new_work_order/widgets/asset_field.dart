import 'package:amtiss/domain/work/models/category_model.dart';
import 'package:amtiss/infrastructure/core/common_functions.dart';
import 'package:flutter/material.dart';

import '../../../components/components.dart';

class AssetField extends StatelessWidget {
  final String title, selectedItemText;
  final List<AssetItem> itemList;
  final Function(AssetItem value) onItemTap;
  final bool enable;

  const AssetField(
      {Key? key,
      required this.title,
      required this.itemList,
      required this.selectedItemText,
      required this.onItemTap,
      this.enable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: H3Atm(
            title,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.grey),
          ),
        ),
        SizedBox(width: 35),
        Expanded(
          flex: 3,
          child: InkWell(
            onTap: !enable
                ? () {}
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
                                  onTap: () => onItemTap(data),
                                  title: H3Atm(data.name!.toTitleCase()),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: H3Atm(selectedItemText, style: TextStyle(color: Colors.grey))),
                  SizedBox(width: 10),
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
}
