import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

import '../utils/style.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketInfo;
  const TicketView({super.key, required this.ticketInfo});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    print(AppLayout.getScreenHeight());
    print(AppLayout.getHeight(200));
    return SizedBox(
      width: size.width * 0.85, // ให้ตัว ticket กินพื้นที่ 85%
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // Showing blue part of the ticket
            Container(
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                decoration: BoxDecoration(
                    color: const Color(0xFF526799),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticketInfo["from"]["code"],
                          style: Style.headLineStlye3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        ThickContainer(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: LayoutBuilder(
                                    builder: (context, constraints) {
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => const SizedBox(
                                              width: 3,
                                              height: 1,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white),
                                              ),
                                            )),
                                  );
                                }),
                              ),
                              Center(
                                child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(Icons.local_airport_rounded,
                                        color: Colors.white)),
                              )
                            ],
                          ),
                        ),
                        ThickContainer(),
                        const Spacer(),
                        Text(ticketInfo["to"]["code"],
                            style: Style.headLineStlye3
                                .copyWith(color: Colors.white))
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticketInfo["from"]["name"],
                              style: Style.headLineStlye4
                                  .copyWith(color: Colors.white)),
                        ),
                        Text(ticketInfo["flying_time"],
                            style: Style.headLineStlye4
                                .copyWith(color: Colors.white)),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticketInfo["to"]["name"],
                              textAlign: TextAlign.end,
                              style: Style.headLineStlye4
                                  .copyWith(color: Colors.white)),
                        ),
                      ],
                    )
                  ],
                )),
            // Showing the orange part of the ticket
            Container(
              color: const Color(0xFFF37B67),
              child: Row(
                children: [
                  SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: const DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                      )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: ((context, constraints) {
                        return Flex(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          direction: Axis.horizontal,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                    ),
                                  )),
                        );
                      }),
                    ),
                  )),
                  const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                      ))
                ],
              ),
            ),
            // Orange bottom part
            Container(
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              decoration: BoxDecoration(
                  color: Style.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticketInfo["date"],
                              style: Style.headLineStlye3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("DATE",
                              style: Style.headLineStlye4
                                  .copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticketInfo["departure_time"],
                              style: Style.headLineStlye3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("Departure time",
                              style: Style.headLineStlye4
                                  .copyWith(color: Colors.white))
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("${ticketInfo["number"]}",
                              style: Style.headLineStlye3
                                  .copyWith(color: Colors.white)),
                          const Gap(5),
                          Text("Number",
                              style: Style.headLineStlye4
                                  .copyWith(color: Colors.white))
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ); // ใช้ SizedBox เพราะ Ticket มีขนาดเฉพาะ
  }
}
