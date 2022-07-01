import 'package:flutter/material.dart';
import 'package:ui_designers/components/list/custom_resent_course_list.dart';
import 'package:ui_designers/constants.dart';
import 'package:ui_designers/screens/custom_home_navbar_screen.dart';

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
                const HomeSceenNavBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Recents", style: kTitle1Style),
                      const SizedBox(height: 5.0),
                      Text("23 courses, more comming", style: kSubtitleStyle),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const ResentCursesList(),
                // const ExploreItemList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class ExploreItemList extends StatelessWidget {
//   const ExploreItemList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }