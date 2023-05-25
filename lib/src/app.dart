import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:punching_attendance/src/pages/attendance.dart';
import 'package:punching_attendance/src/pages/bottomnav.dart';
import 'package:punching_attendance/src/pages/_settings.dart';
import 'package:punching_attendance/src/pages/profile.dart';
import 'package:punching_attendance/src/pages/punching.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Attendance(),
    );
  }
}