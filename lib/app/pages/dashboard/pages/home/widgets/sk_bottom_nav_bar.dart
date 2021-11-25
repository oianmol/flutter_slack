import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/controller/sl_dashboard_controller.dart';

class SKBottomNavBar extends GetView<SLDashboardController> {
  const SKBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.find<SLDashboardController>(),
        builder: (cont) {
          return BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: GoogleFonts.notoSans(),
            unselectedLabelStyle: GoogleFonts.notoSans(),
            items: navBarItems(),
            onTap: (index) {
              controller.switchTab(index);
            },
          );
        });
  }

  List<BottomNavigationBarItem> navBarItems() {
    return const [
      BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
      BottomNavigationBarItem(
          icon: Icon(Icons.messenger_outline_rounded), label: "DMs"),
      BottomNavigationBarItem(
          icon: Icon(Icons.alternate_email), label: "Mentions"),
      BottomNavigationBarItem(
          icon: Icon(Icons.search_rounded), label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.support_agent), label: "You")
    ];
  }
}
