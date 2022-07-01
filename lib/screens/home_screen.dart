
import 'package:flutter/material.dart';
import 'package:ui_designers/components/list/custom_expolor_course_list.dart';
import 'package:ui_designers/components/list/custom_resent_course_list.dart';
import 'package:ui_designers/constants.dart';
import 'package:ui_designers/screens/custom_home_navbar_screen.dart';
import 'package:ui_designers/screens/custom_sidebar_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late Animation<Offset> sidebarAnimation;
  late Animation<double> fadeAnimation;
  late AnimationController sidebarController;
  var sidebarHidden = true;

  @override
  void initState() {
    super.initState();
    sidebarController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    sidebarAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: sidebarController, curve: Curves.easeInOut),
    );
    fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: sidebarController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    super.dispose();
    sidebarController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBackgroundColor,
        child: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  HomeSceenNavBar(
                    triggerAnimation: () {
                      setState(() {
                        sidebarHidden = !sidebarHidden;
                      });
                      sidebarController.forward();
                    },
                  ),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 16,
                      top: 25,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Explore",
                          style: kTitle1Style,
                        ),
                      ],
                    ),
                  ),
                  const ExploreCourceList(),
                ],
              ),
            ),
            IgnorePointer(
              ignoring: sidebarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: GestureDetector(
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        color: const Color.fromRGBO(38, 40, 42, 0.8),
                      ),
                      onTap: () {
                        setState(() {
                          sidebarHidden = !sidebarHidden;
                        });
                        sidebarController.reverse();
                      },
                    ),
                  ),
                  SlideTransition(
                    position: sidebarAnimation,
                    child: const SafeArea(
                      child: sidebarScreen(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}