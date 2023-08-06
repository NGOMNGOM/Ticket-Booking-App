import 'package:flutter/material.dart';

import '../utils/style.dart';

class ViewAll extends StatelessWidget {
  final String text;
  const ViewAll({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Style.headLineStlye2,
        ),
        InkWell(
          onTap: () {
            print("View all ${text}");
          },
          child: Text("View all",
              style: Style.textStlye.copyWith(color: Style.primaryColor)),
        )
      ],
    );
  }
}
