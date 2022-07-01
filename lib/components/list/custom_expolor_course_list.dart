import 'package:flutter/material.dart';
import 'package:ui_designers/components/card/custom_expolor_course_card.dart';
import 'package:ui_designers/model/cource.dart';

class ExploreCourceList extends StatelessWidget {
  const ExploreCourceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
            child: ExploreCourceItem(course: exploreCourses[index]),
          );
        },
      ),
    );
  }
}

