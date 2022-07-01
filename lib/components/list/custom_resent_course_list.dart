import 'package:flutter/material.dart';
import 'package:ui_designers/components/card/custom_recent_cource_card..dart';
import 'package:ui_designers/model/cource.dart';

class ResentCursesList extends StatefulWidget {
  const ResentCursesList({Key? key}) : super(key: key);

  @override
  State<ResentCursesList> createState() => ResentCursesListState();
}

class ResentCursesListState extends State<ResentCursesList> {
  List<Container> containers = [];
  int currentIndex = 0;

  Widget updateIndecator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: recentCources.map(
        (e) {
          var index = recentCources.indexOf(e);
          return Container(
            width: 7.0,
            height: 7.0,
            margin: const EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == index ? Colors.blue : Colors.grey,
            ),
          );
        },
      ).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Opacity(
              opacity: currentIndex == index ? 1.0 : 0.5,
              child: RecentCourceCard(
                course: recentCources[index],
              ),
            ),
            itemCount: recentCources.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.65),
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        updateIndecator()
      ],
    );
  }
}
