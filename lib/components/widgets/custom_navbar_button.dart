import 'package:flutter/material.dart';
import 'package:ui_designers/constants.dart';

class CustomNavbarButton extends StatelessWidget {
  final void Function()? triggerAnimation;
  const CustomNavbarButton({
    required this.triggerAnimation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: triggerAnimation,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: const BoxConstraints(
        maxHeight: 40.0,
        maxWidth: 40.0,
      ),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              color: kShadowColor,
              offset: Offset(0, 12),
              blurRadius: 20,
            )
          ],
        ),
        child: Image.asset(
          'asset/icons/icon-sidebar.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
