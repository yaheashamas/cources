import 'package:flutter/material.dart';
import 'package:ui_designers/components/card/custom_continue_watching_card.dart';
import 'package:ui_designers/model/cource.dart';

class ContinueWatchingList extends StatefulWidget {
  ContinueWatchingList({Key? key}) : super(key: key);

  @override
  State<ContinueWatchingList> createState() => _ContinueWatchingListState();
}

class _ContinueWatchingListState extends State<ContinueWatchingList> {
  int currentPage = 0;

  Widget updateIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: continueWatchingCourses.map((cource) {
        var index = continueWatchingCourses.indexOf(cource);
        return Container(
          width: 7.0,
          height: 7.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index
                ? const Color(0xFF0971FE)
                : const Color(0xFFA6AEBD),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return ContinueWatchingCard(
                course: continueWatchingCourses[index],
              );
            },
            itemCount: continueWatchingCourses.length,
            controller: PageController(initialPage: 0, viewportFraction: 0.75),
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        updateIndicator()
      ],
    );
  }
}

