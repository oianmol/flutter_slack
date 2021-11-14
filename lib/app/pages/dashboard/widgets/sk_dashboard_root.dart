import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/dashboard/controller/sl_dashboard_controller.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sl_dashboard.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sl_home_side.dart';
import 'package:slack_app/app/widgets/slider/sl_sliding_drawer.dart';

class SLHomePage extends GetView<SLDashboardController> {
  final SLDashboardController controller;

  SLHomePage({Key? key})
      : controller = Get.put(SLDashboardController()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.find<SLDashboardController>(),
        builder: (cont) {
          return Scaffold(
            body: SLCustomSlidingWidget(
              key: controller.slidingKey,
              menu: SLHomeSide(),
              content: SLDashboard(),
              menuSize: context.width * 0.85,
              animationDuration: 200,
            ),
          );
        });
  }
}
