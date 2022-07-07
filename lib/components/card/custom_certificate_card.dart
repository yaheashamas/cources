import 'dart:math';
import 'package:flutter/material.dart';

class CertificateViewer extends StatefulWidget {
  CertificateViewer({Key? key}) : super(key: key);

  @override
  State<CertificateViewer> createState() => _CertificateViewerState();
}

class _CertificateViewerState extends State<CertificateViewer> {
  late Widget cirtificateViewer;

  final List<String> certificatPath = [
    'asset/certificates/certificate-01.png',
    'asset/certificates/certificate-02.png',
    'asset/certificates/certificate-03.png',
  ];

  @override
  void initState() {
    super.initState();
    List<Widget> imageChildren = [];
    cirtificateViewer = Stack(children: imageChildren);
    certificatPath.reversed.toList().asMap().forEach((index, certificatee) {
      int angleDegree;
      if (index == certificatee.length - 1) {
        angleDegree = 0;
      } else {
        angleDegree = Random().nextInt(10) - 5;
      }

      imageChildren.add(
        Transform.rotate(
          angle: angleDegree * (pi / 100),
          child: Image.asset(
            certificatee,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: cirtificateViewer,
      ),
    );
  }
}

