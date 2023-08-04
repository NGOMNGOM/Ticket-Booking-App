import 'package:flutter/material.dart';
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
                        Text("London",
                            style: Style.headLineStlye3
                                .copyWith(color: Colors.white))
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    ); // ใช้ SizedBox เพราะ Ticket มีขนาดเฉพาะ
  }
}
