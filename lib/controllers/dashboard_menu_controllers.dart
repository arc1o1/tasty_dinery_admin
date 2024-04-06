import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tasty_dinery_admin/routing/routes.dart';
import 'package:tasty_dinery_admin/utils/constants/colors.dart';

class DashboardMenuController extends GetxController {
  static DashboardMenuController get instance => Get.find();

  // var instantiation
  var activeItem = dashboardPageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName) {
    activeItem.value = itemName;
  }

  onHover(String itemName) {
    if (!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(BuildContext context, String itemName) {
    switch (itemName) {
      case dashboardPageRoute:
        return _customContainer(context, Icons.dashboard, itemName);
      case mediaPageRoute:
        return _customContainer(context, Icons.image, itemName);
      case bannersPageRoute:
        return _customContainer(context, Iconsax.paperclip, itemName);
      case productsPageRoute:
        return _customContainer(context, Icons.shopping_bag_outlined, itemName);
      case categoriesPageRoute:
        return _customContainer(context, Icons.category, itemName);
      case brandsPageRoute:
        return _customContainer(context, Icons.branding_watermark, itemName);
      case customersPageRoute:
        return _customContainer(context, Icons.people, itemName);
      case ordersPageRoute:
        return _customContainer(context, Iconsax.box, itemName);
      case couponsPageRoute:
        return _customContainer(context, Iconsax.tag, itemName);
      case settingsPageRoute:
        return _customContainer(context, Icons.settings, itemName);

      default:
        return _customContainer(context, Icons.dashboard, itemName);
    }
  }

  Widget _customContainer(
      BuildContext context, IconData icon, String itemName) {
    if (isActive(itemName)) {
      return Container(
        padding: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: CcColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(icon, size: 22, color: Colors.white),
            const SizedBox(width: 10),
            Text(
              itemName,
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontSize: 13,
                  ),
            ),
          ],
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon,
              size: 20,
              color: isHovering(itemName) ? Colors.black : CcColors.lightGrey),
          const SizedBox(width: 10),
          Text(
            itemName,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color:
                      isHovering(itemName) ? Colors.black : CcColors.lightGrey,
                  fontSize: 13,
                ),
          ),
        ],
      ),
    );
  }
}
