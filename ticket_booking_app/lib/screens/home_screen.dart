import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        backgroundColor: Style.bgColor,
        body: ListView(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Gap(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Good Morning", style: Style.headLineStlye3),
                              const Gap(5),
                              Text(
                                "Book Tickets",
                                style: Style.headLineStlye,
                              )
                            ]),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/image/airplane.png"))),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        ));
  }
}
