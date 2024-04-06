import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasty_dinery_admin/controllers/controllers.dart';
import 'package:tasty_dinery_admin/routing/routes.dart';
import 'package:tasty_dinery_admin/utils/constants/image_strings.dart';
import 'package:tasty_dinery_admin/widgets/responsiveness/responsive_widget.dart';
import 'package:tasty_dinery_admin/widgets/side_menu/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.transparent,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Column(
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Image(image: AssetImage(CcImages.appLogo))),
                    Flexible(
                      child: Text(
                        "Tasty Dinery",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(),
                Text(
                  "MENU",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                const SizedBox(height: 10),
                Column(
                  children: sideMenuItems
                      .map((itemName) => CcSideMenuItem(
                          itemName: itemName == authenticationPageRoute
                              ? "Logout"
                              : itemName,
                          onTap: () {
                            if (itemName == authenticationPageRoute) {
                              // todo: go to authentication page
                            }
                            if (!dashboardMenuController.isActive(itemName)) {
                              dashboardMenuController
                                  .changeActiveItemTo(itemName);

                              if (ResponsiveWidget.isSmallScreen(context)) {
                                Get.back();
                                // todo: go to item name route
                              }
                            }
                          }))
                      .toList(),
                ),
              ],
            )
        ],
      ),
    );
  }
}
