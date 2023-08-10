import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/screens/ticket_view.dart';
import 'package:ticket_booking_app/utils/app_info_list.dart';
import 'package:ticket_booking_app/widgets/column_layout.dart';
import 'package:ticket_booking_app/widgets/layout_builder_widget.dart';
import 'package:ticket_booking_app/widgets/ticket_tabs.dart';

import '../utils/app_layout.dart';
import '../utils/style.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Style.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(20),
                  horizontal: AppLayout.getWidth(20)),
              children: [
                Gap(AppLayout.getHeight(40)),
                // Ticket header
                Text(
                  "Tickets",
                  style: Style.headLineStlye,
                ),
                Gap(AppLayout.getHeight(20)),
                // Upcome + previous
                TicketTab(firstTap: "Upcoming", secondTab: "Previous"),
                Gap(AppLayout.getHeight(20)),
                // ticket_view
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(ticketInfo: ticketList[0], isColor: true),
                ),
                SizedBox(
                  height: 0.4,
                ),
                // Flutter DB + Remaining
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            topString: "Flutter DB",
                            bottomString: "Passenger",
                            align: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            topString: "5221 345678",
                            bottomString: "Passport",
                            align: CrossAxisAlignment.end,
                            isColor: true,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutWidget(
                        section: 15,
                        isColor: true,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppColumnLayout(
                            topString: "0055 444 77147",
                            bottomString: "Number of E-tickets",
                            align: CrossAxisAlignment.start,
                            isColor: true,
                          ),
                          AppColumnLayout(
                            topString: "B2SG28",
                            bottomString: "Booking Code",
                            align: CrossAxisAlignment.end,
                            isColor: true,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(20)),
                      const AppLayoutWidget(
                        section: 15,
                        isColor: true,
                        width: 5,
                      ),
                      Gap(AppLayout.getHeight(20)),
                      // Visa
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // left part
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/image/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    " *** 2462",
                                    style: Style.headLineStlye3,
                                  )
                                ],
                              ),
                              Text("Payment method",
                                  style: Style.headLineStlye4)
                            ],
                          )
                          // end of left part
                          // right part
                          ,
                          const AppColumnLayout(
                            topString: "\$249.99",
                            bottomString: "Price",
                            align: CrossAxisAlignment.end,
                            isColor: true,
                          )
                          // end of right part
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                // Barcode

                Container(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(AppLayout.getHeight(21)),
                          bottomLeft:
                              Radius.circular(AppLayout.getHeight(21)))),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                          data: 'https://gitthub.com/NGOMNGOM',
                          barcode: Barcode.code128(),
                          drawText: false,
                          color: Style.textColor,
                          width: double.infinity,
                          height: 78),
                    ),
                  ),
                ),
                // End of Barcode
                // Last ticket_view
                Gap(AppLayout.getHeight(20)),
                Container(
                  padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                  child: TicketView(ticketInfo: ticketList[0]),
                ),
                // End of Last ticket_view
              ],
            ),
            Positioned(
              left: AppLayout.getHeight(22),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3)),
                child: CircleAvatar(
                  backgroundColor: Style.textColor,
                  maxRadius: 4,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Style.textColor, width: 2),
                    shape: BoxShape.circle),
              ),
            ),
            Positioned(
              right: AppLayout.getHeight(22),
              top: AppLayout.getHeight(295),
              child: Container(
                padding: EdgeInsets.all(AppLayout.getHeight(3)),
                child: CircleAvatar(
                  backgroundColor: Style.textColor,
                  maxRadius: 4,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Style.textColor, width: 2),
                    shape: BoxShape.circle),
              ),
            )
          ],
        ));
  }
}
