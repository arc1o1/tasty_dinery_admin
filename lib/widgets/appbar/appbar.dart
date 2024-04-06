import 'package:flutter/material.dart';
import 'package:tasty_dinery_admin/utils/constants/image_strings.dart';
import 'package:tasty_dinery_admin/widgets/images/circular_image.dart';
import 'package:tasty_dinery_admin/widgets/responsiveness/responsive_widget.dart';

AppBar topAppBar(BuildContext context, GlobalKey<ScaffoldState> key) => AppBar(
      backgroundColor: Colors.grey.shade100,
      elevation: 0,
      centerTitle: true,
      leadingWidth: !ResponsiveWidget.isSmallScreen(context) ? 230 : 40,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 40,
                  width: 175,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.6),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 5),
                      Text(
                        "Search Anything Here",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
      actions: !ResponsiveWidget.isSmallScreen(context)
          ? [
              // notification icon bitton
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),

              const SizedBox(width: 10),

              // profile image
              CcCircularImage(
                image: CcImages.user1,
                width: 30,
                height: 30,
                isNetworkImage: false,
                backgroundColor: Colors.grey.withOpacity(0.7),
              ),

              const SizedBox(width: 10),

              // name and email of the user
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mwesiga",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  Text(
                    "tegambwagemwesiga@gmail.com",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(width: 10),
            ]
          : [
              // search icon button
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),

              // notification icon button
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.notifications)),

              const SizedBox(width: 10),

              // profile picture
              CcCircularImage(
                image: CcImages.user1,
                width: 30,
                height: 30,
                isNetworkImage: false,
                backgroundColor: Colors.grey.withOpacity(0.7),
              ),

              const SizedBox(width: 20)
            ],
    );
