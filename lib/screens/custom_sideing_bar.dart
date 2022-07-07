import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ui_designers/components/card/custom_certificate_card.dart';
import 'package:ui_designers/components/list/custom_continue_watching_list.dart';
import 'package:ui_designers/constants.dart';

class SlidingUp extends StatelessWidget {
  const SlidingUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      backdropEnabled: true,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(32.0),
      ),
      boxShadow: const [
        BoxShadow(
          color: kShadowColor,
          offset: Offset(0, -12),
          blurRadius: 32.0,
        )
      ],
      backdropColor: kCardPopupBackgroundColor,
      color: kCardPopupBackgroundColor,
      panel: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 16),
              child: Container(
                height: 4.0,
                width: 42.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFC5CBD6),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Continue Watching",
              style: kTitle1Style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: ContinueWatchingList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Certificates",
              style: kTitle1Style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CertificateViewer(),
          ),
        ],
      ),
    );
  }
}
