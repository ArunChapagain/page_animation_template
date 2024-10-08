import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:self_care/view/initail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(430, 964),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AstrologyAnimation(),
      ),
    );
  }
}
