import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/style.dart';

class AppColumnLayout extends StatelessWidget {
  final String topString;
  final String bottomString;
  final CrossAxisAlignment align;
  final bool? isColor;
  const AppColumnLayout(
      {super.key,
      required this.topString,
      required this.bottomString,
      required this.align,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          topString,
          style: isColor == null
              ? Style.headLineStlye3.copyWith(color: Colors.white)
              : Style.headLineStlye3,
        ),
        Gap(AppLayout.getHeight(5)),
        Text(
          bottomString,
          style: isColor == null
              ? Style.headLineStlye4.copyWith(color: Colors.white)
              : Style.headLineStlye4,
        ),
      ],
    );
  }
}
