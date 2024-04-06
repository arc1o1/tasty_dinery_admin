import 'package:flutter/material.dart';
import 'package:tasty_dinery_admin/widgets/appbar/appbar.dart';

class SmallScreen extends StatelessWidget {
  SmallScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topAppBar(context, scaffoldKey),
      drawer: const Drawer(),
    );
  }
}
