import 'package:flutter/material.dart';
import 'package:tasty_dinery_admin/widgets/appbar/appbar.dart';

class LargeScreen extends StatelessWidget {
  LargeScreen({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.red.shade300,
        )),
        Expanded(
            flex: 4,
            child: Column(
              children: [
                topAppBar(context, scaffoldKey),
                Container(color: Colors.green.shade300),
              ],
            )),
      ],
    );
  }
}
