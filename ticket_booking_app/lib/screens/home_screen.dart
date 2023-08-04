import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';

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
                    const Gap(25),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF4F6FD),
                          borderRadius: BorderRadius.circular(10)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: Row(
                        children: [
                          Icon(
                            FluentSystemIcons.ic_fluent_search_regular,
                            color: Color(0xFFBFC205),
                          ),
                          Text("Search", style: Style.headLineStlye4)
                        ],
                      ),
                    ),
                    const Gap(40),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Flight",
                            style: Style.headLineStlye2,
                          ),
                          InkWell(
                            onTap: () {
                              print("Tapped");
                            },
                            child: Text("View all",
                                style: Style.textStlye
                                    .copyWith(color: Style.primaryColor)),
                          )
                        ]),
                  ],
                )),
            const Gap(15),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                  left: 20), // ในส่วนเฉพาะของ Scrollview (ซ้ายสุด)
              child: Row(
                children: [TicketView(), TicketView()],
              ),
            ),
          ],
        ));
  }
}
