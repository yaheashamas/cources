import 'package:flutter/material.dart';
import 'package:ui_designers/components/custom_sidebar_item.dart';
import 'package:ui_designers/constants.dart';
import 'package:ui_designers/model/sidebar.dart';

class sidebar_screen extends StatelessWidget {
  const sidebar_screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.85,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        decoration: const BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  foregroundImage: AssetImage('asset/images/profile.jpg'),
                  maxRadius: 25.0,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yahea Shamas",
                      style: kHeadlineLabelStyle,
                    ),
                    Text(
                      "I Am Mobile Developer",
                      style: kSubtitleStyle,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.070),
            Custom_sidebar_item(
              sideBarItem: sideBarItem[0],
            ),
            Custom_sidebar_item(
              sideBarItem: sideBarItem[1],
            ),
            Custom_sidebar_item(
              sideBarItem: sideBarItem[2],
            ),
            Custom_sidebar_item(
              sideBarItem: sideBarItem[3],
            ),
            const Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 20,
                ),
                const SizedBox(width: 10),
                Text(
                  "Log Out",
                  style: kSecondaryCalloutLabelStyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
