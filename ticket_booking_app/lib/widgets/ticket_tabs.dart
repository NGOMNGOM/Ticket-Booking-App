import 'package:flutter/material.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

class TicketTab extends StatelessWidget {
  final String firstTap;
  final String secondTab;
  const TicketTab({super.key, required this.firstTap, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            // Airline ticket
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * 0.44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(AppLayout.getHeight(50))),
                  color: Colors.white),
              child: Text(
                firstTap,
                textAlign: TextAlign.center,
              ),
            ),
            // Hotel
            FittedBox(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                width: size.width * 0.44,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(AppLayout.getHeight(50))),
                ),
                child: Text(
                  secondTab,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ));
  }
}
