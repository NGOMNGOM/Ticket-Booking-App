import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/widgets/icon_text.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';
import 'package:ticket_booking_app/widgets/view_all.dart';

import '../utils/style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Style.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are\nyou looking for",
                style: Style.headLineStlye
                    .copyWith(fontSize: AppLayout.getWidth(35))),
            Gap(AppLayout.getHeight(20)),
            TicketTab(firstTap: "Airline tickets", secondTab: "Hotels"),
            Gap(AppLayout.getHeight(25)),
            // Departure
            const IconText(
                icon: Icons.flight_takeoff_rounded, text: "Departure"),
            Gap(AppLayout.getHeight(20)),
            const IconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(25)),
            Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getWidth(18),
                    horizontal: AppLayout.getHeight(15)),
                decoration: BoxDecoration(
                    color: const Color(0xD91130CE),
                    borderRadius:
                        BorderRadius.circular(AppLayout.getWidth(10))),
                child: Center(
                  child: Text(
                    "Find tickets",
                    style: Style.textStlye.copyWith(color: Colors.white),
                  ),
                )),
            Gap(AppLayout.getHeight(40)),
            ViewAll(text: "Upcoming Flight"),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // left box
                Container(
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getWidth(15),
                        horizontal: AppLayout.getHeight(15)),
                    height: AppLayout.getHeight(417),
                    width: size.width * 0.42,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ],
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12))),
                    child: Column(
                      children: [
                        Container(
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(12)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/image/test.jpg"))),
                        ),
                        Gap(AppLayout.getHeight(12)),
                        Text(
                          "20% discount on the early booking of this flight. Don't miss!",
                          style: Style.headLineStlye2,
                        )
                      ],
                    )),
                // Right zone
                Column(
                  children: [
                    // Upper box
                    Stack(
                      children: [
                        // Top box
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getWidth(15)),
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(190),
                          decoration: BoxDecoration(
                              color: Color(0xFF3ABBBB),
                              borderRadius: BorderRadius.circular(
                                  AppLayout.getHeight(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // text inside
                            children: [
                              // Bigger
                              Text("Discount\nfor survey",
                                  style: Style.headLineStlye2.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Gap(AppLayout.getHeight(10)),
                              //Smaller
                              Text(
                                  "Take the survey about our services and get discount",
                                  style: Style.headLineStlye2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Colors.white))
                            ],
                          ),
                        ),
                        // Circle
                        Positioned(
                          right: -45,
                          top: -40,
                          child: Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(
                                  width: 18,
                                  color: Color(0xFF189999),
                                )),
                          ),
                        )
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    // Lower box
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getWidth(15)),
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      decoration: BoxDecoration(
                          color: const Color(0xFFEC6545),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18))),
                      child: Column(
                        children: [
                          Text(
                            "Take Love",
                            textAlign: TextAlign.center,
                            style: Style.headLineStlye2.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Gap(AppLayout.getHeight(5)),
                          RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: "😀", style: TextStyle(fontSize: 28)),
                            TextSpan(
                                text: "😘", style: TextStyle(fontSize: 40)),
                            TextSpan(text: "😊", style: TextStyle(fontSize: 28))
                          ]))
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
