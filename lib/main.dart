import 'package:device_preview/device_preview.dart';
import 'package:doctor_app/pages/homepage.dart';
import 'package:doctor_app/pages/DoctorScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: ((context) => const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/DoctorScreen': (context) => const DoctorScreen(),
      },
    );
  }
}
