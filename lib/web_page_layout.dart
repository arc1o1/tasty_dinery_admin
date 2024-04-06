import 'package:flutter/material.dart';
import 'package:tasty_dinery_admin/widgets/responsiveness/responsive_widget.dart';
import 'package:tasty_dinery_admin/widgets/screens/large_screen.dart';
import 'package:tasty_dinery_admin/widgets/screens/small_screen.dart';

class WebPageLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  WebPageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
