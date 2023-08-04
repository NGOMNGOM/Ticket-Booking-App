import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

import '../utils/style.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            // Showing blue part of the ticket
            Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    color: Color(0xFF526799),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: Style.headLineStlye3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        ThickContainer(),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
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
                        Text("LDN",
                            style: Style.headLineStlye3
                                .copyWith(color: Colors.white))
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text("New-York",
                              style: Style.headLineStlye4
                                  .copyWith(color: Colors.white)),
                        ),
                        Text("8H 30M",
                            style: Style.headLineStlye4
                                .copyWith(color: Colors.white)),
                        SizedBox(
                          width: 100,
                          child: Text("London",
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
                  const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
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
                          Text("1 MAY",
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
                          Text("08:00 AM",
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
                          Text("23",
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
