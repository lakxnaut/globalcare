import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_nuero_care/dashboard.dart';
import 'package:global_nuero_care/enter_number.dart';
import 'package:global_nuero_care/inpatient_details.dart';
import 'package:global_nuero_care/onboarding_screen.dart';
import 'package:global_nuero_care/select_lang.dart';
import 'package:global_nuero_care/splash_screen.dart';
import 'package:global_nuero_care/upload_prescription_screen.dart';
import 'package:global_nuero_care/video_consult_code.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFFAAB3B),
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}
