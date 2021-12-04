import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/dashboard/controller/sl_dashboard_controller.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sl_dashboard.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sl_home_side.dart';
import 'package:slack_app/app/widgets/slider/sl_sliding_drawer.dart';
import 'dart:math';

class SLHomePage extends GetView<SLDashboardController> {
  const SLHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.isPhone) {
      return Scaffold(
        body: SLCustomSlidingWidget(
          key: controller.slidingKey,
          menu: const SLHomeSide(),
          content: const SLDashboard(),
          menuSize: context.width * 0.85,
          animationDuration: 200,
        ),
      );
    } else {
      return Scaffold(
          body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: const SLHomeSide(),
            flex: context.flex().first,
          ),
          Expanded(
            child: const SLDashboard(),
            flex: context.flex().second,
          )
        ],
      ));
    }
  }
}

class Pair<F, S> {
  F first;
  S second;

  Pair(this.first, this.second);
}

extension Flex on BuildContext {
  Pair<int, int> flex() {
    int first = 2;
    int second = 4;
    if (isSmallTablet) {
      if (isPortrait) {
        first = 2;
        second = 4;
      } else {
        first = 2;
        second = 6;
      }
    } else {
      first = 2;
      second = 5;
    }
    return Pair(first, second);
  }
}
