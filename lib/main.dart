import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasty_dinery_admin/controllers/dashboard_menu_controllers.dart';
import 'package:tasty_dinery_admin/utils/theme/theme.dart';
import 'package:tasty_dinery_admin/web_page_layout.dart';

void main() {
  Get.put(DashboardMenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CcTheme.lightTheme,
      title: "Tasty Dinery",
      home: WebPageLayout(),
    );
  }
}
