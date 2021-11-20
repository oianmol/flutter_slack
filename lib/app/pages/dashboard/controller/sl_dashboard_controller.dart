import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/dashboard/pages/dms/sk_direct_messages_screen.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/sk_home_screen.dart';
import 'package:slack_app/app/pages/dashboard/pages/mentions/sk_mentions_screen.dart';
import 'package:slack_app/app/pages/dashboard/pages/personal/sk_personal_screen.dart';
import 'package:slack_app/app/pages/dashboard/pages/search/sk_search_screen.dart';
import 'package:slack_app/app/pages/dashboard/widgets/overlay/sk_overlay_manager.dart';
import 'package:slack_app/app/widgets/slider/sl_sliding_drawer.dart';

class SLDashboardController extends GetxController {
  var slidingKey = GlobalKey<SLCustomSlidingWidgetState>();
  var selectedIndex = 0;
  var widgets = <Widget>[];

  toggleDrawer() {
    slidingKey.currentState?.toggle();
  }

  currentWidget() {
    return widgets[selectedIndex];
  }

  switchTab(index) {
    selectedIndex = index;
    update();
    if (index < 3) {
      SKOverlayManager.appLoader.showOverlay();
    } else {
      SKOverlayManager.appLoader.hideOverlay();
    }
    if (index > 0) {
      slidingKey.currentState?.disableSwipe();
    } else {
      slidingKey.currentState?.enableSwipe();
    }
  }

  @override
  void onInit() {
    super.onInit();
    widgets = [
      SKHomeScreen(() {
        toggleDrawer();
      }),
      const SKDirectMessagesScreen(),
      const SKMentionsScreen(),
      const SKSearchScreen(),
      const SKPersonalScreen()
    ];
  }
}
