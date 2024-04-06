import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tasty_dinery_admin/controllers/controllers.dart';
import 'package:tasty_dinery_admin/utils/constants/colors.dart';

class CcVerticalMenuItem extends StatelessWidget {
  const CcVerticalMenuItem({
    super.key,
    this.itemName,
    this.onTap,
  });

  final String? itemName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? dashboardMenuController.onHover(itemName!)
            : dashboardMenuController.onHover("Not Hovering");
      },
      child: Obx(
        () => Container(
          color: dashboardMenuController.isHovering(itemName!)
              ? Colors.black
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: dashboardMenuController.isHovering(itemName!) ||
                    dashboardMenuController.isActive(itemName!),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 3,
                  height: 72,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: dashboardMenuController.returnIconFor(
                          context, itemName!),
                    ),
                    if (!dashboardMenuController.isActive(itemName!))
                      Flexible(
                        child: Text(
                          itemName!,
                          style: TextStyle(
                              color:
                                  dashboardMenuController.isHovering(itemName!)
                                      ? Colors.black
                                      : CcColors.lightGrey),
                        ),
                      )
                    else
                      Flexible(
                        child: Text(
                          itemName!,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
