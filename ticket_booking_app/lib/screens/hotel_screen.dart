import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking_app/utils/app_layout.dart';

import '../utils/style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  HotelScreen({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      margin: const EdgeInsets.only(right: 20, top: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      width: (size.width * 0.6),
      height: 300,
      decoration: BoxDecoration(
          color: Style.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200, blurRadius: 20, spreadRadius: 5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Style.primaryColor,
                image: const DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage("assets/image/test.jpg"))),
          ),
          const Gap(10),
          Text(hotel["place"],
              style: Style.headLineStlye2.copyWith(color: Style.kakiColor)),
          const Gap(5),
          Text(hotel["destination"],
              style: Style.headLineStlye3.copyWith(color: Colors.white)),
          const Gap(8),
          // ignore: unnecessary_brace_in_string_interps
          Text("\$${hotel["price"]}/night",
              style: Style.headLineStlye.copyWith(color: Colors.white))
        ],
      ),
    );
  }
}
