import 'package:flutter/material.dart';

class SideBarItem {
  String title;
  LinearGradient linearGradient;
  Icon icon;

  SideBarItem({
    required this.title,
    required this.linearGradient,
    required this.icon,
  });
}

var sideBarItem = [
  SideBarItem(
    title: "Home",
    linearGradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0XFF00AEFF),
        Color(0XFF0076FF),
      ],
    ),
    icon: const Icon(
      Icons.home,
      color: Colors.white,
    ),
  ),
  SideBarItem(
    title: "Cources",
    linearGradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0XFFFA7d75),
        Color(0XFFC23D61),
      ],
    ),
    icon: const Icon(
      Icons.language_rounded,
      color: Colors.white,
    ),
  ),
  SideBarItem(
    title: "Billing",
    linearGradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0XFFFAD64A),
        Color(0XFFEA880F),
      ],
    ),
    icon: const Icon(
      Icons.credit_card,
      color: Colors.white,
    ),
  ),
  SideBarItem(
    title: "Settings",
    linearGradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0XFF4E62CC),
        Color(0XFF202A78),
      ],
    ),
    icon: const Icon(
      Icons.settings,
      color: Colors.white,
    ),
  ),
];
