import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';

import '../utils/style.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketInfo;
  final bool? isColor;
  const TicketView({super.key, required this.ticketInfo, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85, // ให้ตัว ticket กินพื้นที่ 85%
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 167 : 169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            // Showing blue part of the ticket
            Container(
                padding: EdgeInsets.all(AppLayout.getHeight(16)),
                decoration: BoxDecoration(
                    color: isColor == null
                        ? const Color(0xFF526799)
                        : Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppLayout.getHeight(21)),
                        topRight: Radius.circular(AppLayout.getHeight(21)))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          ticketInfo["from"]["code"],
                          style: isColor == null
                              ? Style.headLineStlye3
                                  .copyWith(color: Colors.white)
                              : Style.headLineStlye3,
                        ),
                        const Spacer(),
                        ThickContainer(
                          isColor: isColor,
                        ),
                        Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: AppLayout.getHeight(24),
                                child: AppLayoutWidget(
                                  section: 6,
                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                    angle: 1.5,
                                    child: Icon(Icons.local_airport_rounded,
                                        color: isColor == null
                                            ? Colors.white
                                            : Color(0xFF8ACCF7))),
                              )
                            ],
                          ),
                        ),
                        ThickContainer(isColor: isColor),
                        const Spacer(),
                        Text(ticketInfo["to"]["code"],
                            style: isColor == null
                                ? Style.headLineStlye3
                                    .copyWith(color: Colors.white)
                                : Style.headLineStlye3)
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticketInfo["from"]["name"],
                              style: isColor == null
                                  ? Style.headLineStlye4
                                      .copyWith(color: Colors.white)
                                  : Style.headLineStlye4),
                        ),
                        Text(ticketInfo["flying_time"],
                            style: isColor == null
                                ? Style.headLineStlye4
                                    .copyWith(color: Colors.white)
                                : Style.headLineStlye4),
                        SizedBox(
                          width: AppLayout.getWidth(100),
                          child: Text(ticketInfo["to"]["name"],
                              textAlign: TextAlign.end,
                              style: isColor == null
                                  ? Style.headLineStlye4
                                      .copyWith(color: Colors.white)
                                  : Style.headLineStlye4),
                        ),
                      ],
                    )
                  ],
                )),
            // Showing the orange part of the ticket
            Container(
              color: isColor == null ? const Color(0xFFF37B67) : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
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
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade300),
                                    ),
                                  )),
                        );
                      }),
                    ),
                  )),
                  SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
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
                  color: isColor == null ? Style.orangeColor : Colors.white,
                  borderRadius: isColor == null
                      ? BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))
                      : null),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          topString: ticketInfo["departure_time"],
                          bottomString: "DATE",
                          align: CrossAxisAlignment.start,
                          isColor: isColor),
                      AppColumnLayout(
                          topString: ticketInfo["date"],
                          bottomString: "Departure time",
                          align: CrossAxisAlignment.center,
                          isColor: isColor),
                      AppColumnLayout(
                          topString: "${ticketInfo["number"]}",
                          bottomString: "Number",
                          align: CrossAxisAlignment.end,
                          isColor: isColor),
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
