import 'package:flutter/material.dart';
import 'package:tasty_dinery_admin/widgets/responsiveness/responsive_widget.dart';
import 'package:tasty_dinery_admin/widgets/side_menu/widgets/horizontal_menu_item.dart';
import 'package:tasty_dinery_admin/widgets/side_menu/widgets/vertical_menu_item.dart';

class CcSideMenuItem extends StatelessWidget {
  const CcSideMenuItem({
    super.key,
    required this.itemName,
    required this.onTap,
  });

  final String itemName;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return CcHorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return CcVerticalMenuItem(itemName: itemName, onTap: onTap);
    }
  }
}
