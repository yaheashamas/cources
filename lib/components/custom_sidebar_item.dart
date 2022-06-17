import 'package:flutter/material.dart';
import 'package:ui_designers/constants.dart';
import 'package:ui_designers/model/sidebar.dart';

class Custom_sidebar_item extends StatelessWidget {
  final SideBarItem sideBarItem;
  const Custom_sidebar_item({
    Key? key,
    required this.sideBarItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 42.0,
              height: 42.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: sideBarItem.linearGradient),
              child: Center(child: sideBarItem.icon),
            ),
            const SizedBox(
              width: 14,
            ),
            Text(
              sideBarItem.title,
              style: kCalloutLabelStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
