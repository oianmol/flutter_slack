import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/widgets/slider/sl_sliding_drawer.dart';

class SLDashboardController extends GetxController {
  var slidingKey = GlobalKey<SLCustomSlidingWidgetState>();

  toggleDrawer() {
    slidingKey.currentState?.toggle();
  }
}
