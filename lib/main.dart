import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sk_dashboard_root.dart';

void main() {
  runApp(const SlackApp());
}

class SlackApp extends StatelessWidget {
  const SlackApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return materialApp();
  }

  GetCupertinoApp cupertinoApp() {
    return GetCupertinoApp(
      home: SLHomePage(),
    );
  }

  GetMaterialApp materialApp() {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: SLHomePage(),
    );
  }
}
