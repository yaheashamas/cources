import 'package:flutter/material.dart';
import 'package:ui_designers/components/card/custom_recent_cource_card..dart';
import 'package:ui_designers/constants.dart';
import 'package:ui_designers/model/cource.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: kBackgroundColor,
            child: Column(
              children: [
                HomeSceenNavBar(),
                RecentCourceCard(
                  course: recentCources[2],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
          Custom_navbar_button(),
          Custom_searchField(),
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

class Custom_searchField extends StatelessWidget {
  const Custom_searchField({Key? key}) : super(key: key);

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

class Custom_navbar_button extends StatelessWidget {
  const Custom_navbar_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: () {},
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
                color: kShadowColor, offset: Offset(0, 12), blurRadius: 20)
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
