import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

import '../utils/style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            // Head -> Pic Book Edit
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Picture
                Container(
                  height: AppLayout.getHeight(86),
                  width: AppLayout.getWidth(86),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/image/test.jpg")),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10))),
                ),
                Gap(AppLayout.getWidth(10)),
                // Bookticket section
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Book Tickets",
                      style: Style.headLineStlye,
                    ),
                    Gap(AppLayout.getWidth(2)),
                    Text(
                      "New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    Gap(AppLayout.getWidth(8)),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(3),
                          vertical: AppLayout.getHeight(3)),
                      decoration: BoxDecoration(
                          color: const Color(0xFFFEF4F3),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(100))),
                      child: Row(
                        children: [
                          // icon
                          Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(3)),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF526799)),
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          Gap(AppLayout.getWidth(5)),

                          // Premium status
                          const Text("Premium status",
                              style: TextStyle(
                                  color: Color(0xFF526799),
                                  fontWeight: FontWeight.w600))
                        ],
                      ),
                    )
                  ],
                ),
                Gap(AppLayout.getWidth(10)),
                const Spacer(),
                Column(
                  children: [
                    InkWell(
                      onTap: () => print("EDIT!"),
                      child: Text("Edit",
                          style: Style.textStlye.copyWith(
                              color: Style.primaryColor,
                              fontWeight: FontWeight.w300)),
                    )
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(8)),
            Divider(
              color: Colors.grey.shade300,
            ),
            Gap(AppLayout.getHeight(8)),
            // blue box
            Stack(
              children: [
                // Box
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25)),
                  height: AppLayout.getHeight(90),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Style.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18))),
                  child:
                      // Content inside box
                      Row(
                    children: [
                      // icon
                      CircleAvatar(
                        child: Icon(
                            FluentSystemIcons
                                .ic_fluent_lightbulb_filament_filled,
                            color: Style.primaryColor),
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                      ),
                      Gap(AppLayout.getHeight(12))

                      // Award
                      ,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // bigger text
                          Text(
                            "You've got a new award",
                            style: Style.headLineStlye2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          // smaller text

                          Text(
                            "You have 95 flights in a year",
                            style: Style.headLineStlye2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // ลายวงกลม
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(30)),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 18,
                          color: Color(0XFF264CD2),
                        )),
                  ),
                )
              ],
            ),
            Gap(AppLayout.getHeight(25)),
            Text("Accumulated miles", style: Style.headLineStlye2),
            Gap(AppLayout.getHeight(20)),

            Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                  color: Style.bgColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 5)
                  ]),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(15)),
                  // number
                  Text(
                    "192802",
                    style: TextStyle(
                        fontSize: 45,
                        color: Style.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  // Miles + 11 June
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Miles accrued",
                          style: Style.headLineStlye4.copyWith(fontSize: 16)),
                      Text("11 June 2022",
                          style: Style.headLineStlye4.copyWith(fontSize: 16)),
                    ],
                  ),
                  Gap(AppLayout.getHeight(4)),

                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Gap(AppLayout.getHeight(4)),

                  // Miles + Receive from 1
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        topString: "23 042",
                        bottomString: "Miles",
                        align: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        topString: "Airline CO",
                        bottomString: "Received from",
                        align: CrossAxisAlignment.end,
                        isColor: true,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  // Dotted line
                  AppLayoutWidget(
                    section: 12,
                    isColor: true,
                  ),
                  Gap(AppLayout.getHeight(12)),

                  // 24 + Mc
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        topString: "24",
                        bottomString: "Miles",
                        align: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        topString: "McDonal's",
                        bottomString: "Received from",
                        align: CrossAxisAlignment.end,
                        isColor: true,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  // Dotted line
                  AppLayoutWidget(
                    section: 12,
                    isColor: true,
                  ),
                  Gap(AppLayout.getHeight(12)),
                  // 52 + Exuma
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        topString: "52 340",
                        bottomString: "Miles",
                        align: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        topString: "Exuma",
                        bottomString: "Received from",
                        align: CrossAxisAlignment.end,
                        isColor: true,
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(25)),

                  InkWell(
                    onTap: () => print("How to get more miles"),
                    child: Text("How to get more miles",
                        style: Style.textStlye.copyWith(
                            color: Style.primaryColor,
                            fontWeight: FontWeight.w500)),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
