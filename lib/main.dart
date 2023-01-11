import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:pastpapers/Screens/Welcome.dart';
import 'package:pastpapers/constants.dart';
import 'package:flutter/foundation.dart';
import 'Screens/Welcome.dart';

void main() {
  runApp(MyApp()
      //DevicePreview(
      // builder: (context) => MyApp(),
      //enabled: !kReleaseMode,
      //),
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Pastpapers",
      theme: ThemeData(
        primaryColor: primarycolor,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: primaryblackcolor),
          hintStyle: TextStyle(color: primaryblackcolor),
        ),
      ),
      home: Welcome(),
    );
  }
}
