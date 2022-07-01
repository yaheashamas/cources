import 'package:flutter/material.dart';
import 'package:ui_designers/components/widgets/custom_navbar_button.dart';
import 'package:ui_designers/components/widgets/custom_text_form_field.dart';

class HomeSceenNavBar extends StatelessWidget {
  final void Function()? triggerAnimation;

  const HomeSceenNavBar({
    required this.triggerAnimation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomNavbarButton(triggerAnimation: triggerAnimation),
          const CustomSearchFieldWidget(),
          const Icon(
            Icons.notifications,
          ),
          const SizedBox(width: 10),
          const CircleAvatar(
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
