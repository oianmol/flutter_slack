import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/dashboard/controller/sl_dashboard_controller.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sl_dashboard.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sl_home_side.dart';
import 'package:slack_app/app/widgets/slider/sl_sliding_drawer.dart';
import 'dart:math';

class SLHomePage extends GetResponsiveView<SLDashboardController> {
  final SLDashboardController controller;

  SLHomePage({Key? key})
      : controller = Get.put(SLDashboardController()),
        super(key: key);

  @override
  Widget? desktop() {
    return Scaffold(
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: const [
            Flexible(
              child: SLHomeSide(),
              flex: 1,
            ),
            Expanded(
              child: SLDashboard(),
              flex: 3,
            )
          ],
        ));
  }

  @override
  Widget? tablet() {
    return Scaffold(
        body: Row(
          mainAxisSize: MainAxisSize.max,
          children: const [
            Flexible(
              child: SLHomeSide(),
              flex: 3,
            ),
            Expanded(
              child: SLDashboard(),
              flex: 5,
            )
          ],
        ));
  }

  @override
  Widget? phone() {
    return Scaffold(
      body: SLCustomSlidingWidget(
        key: controller.slidingKey,
        menu: const SLHomeSide(),
        content: const SLDashboard(),
        menuSize: 280,
        animationDuration: 200,
      ),
    );
  }
}
