import 'package:flutter/material.dart';
import 'package:ui_designers/constants.dart';
import 'package:ui_designers/model/cource.dart';

class RecentCourceCard extends StatelessWidget {
  Course course;
  RecentCourceCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: 240.0,
            height: 240.0,
            decoration: BoxDecoration(
                gradient: course.background,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: course.background.colors[0].withOpacity(0.3),
                    offset: const Offset(0, 5),
                    blurRadius: 30.0,
                  ),
                  BoxShadow(
                    color: course.background.colors[1].withOpacity(0.3),
                    offset: const Offset(0, 5),
                    blurRadius: 30.0,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course.courseSubtitle,
                    style: kCardSubtitleStyle,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    course.courseTitle,
                    style: kCardTitleStyle,
                  ),
                  Expanded(
                    child: Image.asset(
                      'asset/illustrations/${course.illustration}',
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            height: 60.0,
            width: 60.0,
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Image.asset(
              'asset/logos/${course.logo}',
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
