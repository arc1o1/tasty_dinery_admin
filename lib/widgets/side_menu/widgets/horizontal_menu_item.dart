import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasty_dinery_admin/controllers/controllers.dart';
import 'package:tasty_dinery_admin/utils/constants/colors.dart';

class CcHorizontalMenuItem extends StatelessWidget {
  const CcHorizontalMenuItem({
    super.key,
    this.itemName,
    this.onTap,
  });

  final String? itemName;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? dashboardMenuController.onHover(itemName!)
            : dashboardMenuController.onHover("not hovering");
      },
      child: Obx(
        () => Container(
          color: dashboardMenuController.isHovering(itemName!)
              ? Colors.blue
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: dashboardMenuController.isHovering(itemName!) ||
                    dashboardMenuController.isActive(itemName!),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(width: 6, height: 40, color: Colors.black),
              ),
              SizedBox(width: width / 80),
              Padding(
                padding: const EdgeInsets.all(16),
                child:
                    dashboardMenuController.returnIconFor(context, itemName!),
              ),
              if (!dashboardMenuController.isActive(itemName!))
                Flexible(
                  child: Text(
                    itemName!,
                    style: TextStyle(
                        color: dashboardMenuController.isHovering(itemName!)
                            ? Colors.black
                            : CcColors.lightGrey),
                  ),
                )
              else
                Flexible(
                    child: Text(
                  itemName!,
                  style: const TextStyle(color: Colors.black),
                ))
            ],
          ),
        ),
      ),
    );
  }
}
