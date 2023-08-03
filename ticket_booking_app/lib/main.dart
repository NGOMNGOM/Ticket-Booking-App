import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/bottom.dart';
import 'package:ticket_booking_app/utils/style.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: primary),
        debugShowCheckedModeBanner: false,
        home: const Bottom());
  }
}
