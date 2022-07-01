import 'package:flutter/material.dart';
import 'package:ui_designers/constants.dart';

class CustomSearchFieldWidget extends StatelessWidget {
  const CustomSearchFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 40),
        child: Container(
          height: 40,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: kShadowColor,
                offset: Offset(0, 12),
                blurRadius: 20,
              )
            ],
          ),
          child: TextField(
            decoration: const InputDecoration(
              icon: Icon(
                Icons.search,
                color: kPrimaryLabelColor,
                size: 20.0,
              ),
              border: InputBorder.none,
              hintText: "Search for cources...",
            ),
            onChanged: (newText) {},
            style: kSearchTextStyle,
          ),
        ),
      ),
    );
  }
}
