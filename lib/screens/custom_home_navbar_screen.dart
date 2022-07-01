import 'package:flutter/material.dart';
import 'package:ui_designers/components/widgets/custom_navbar_button.dart';
import 'package:ui_designers/components/widgets/custom_text_form_field.dart';

class HomeSceenNavBar extends StatelessWidget {
  const HomeSceenNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomNavbarButton(),
          CustomSearchFieldWidget(),
          Icon(
            Icons.notifications,
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: AssetImage(
              'asset/images/profile.jpg',
            ),
            radius: 20,
          )
        ],
      ),
    );
  }
}
