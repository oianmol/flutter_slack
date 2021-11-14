import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/controller/sl_dashboard_controller.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_bottom_nav_bar.dart';

class SLDashboard extends GetView<SLDashboardController> {
  const SLDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.find<SLDashboardController>(),
        builder: (cont) {
          return Scaffold(
            body: controller.currentWidget(),
            bottomNavigationBar: const SKBottomNavBar(),
          );
        });
  }
}
