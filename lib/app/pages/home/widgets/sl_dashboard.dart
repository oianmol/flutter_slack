import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/home/controller/sl_dashboard_controller.dart';
import 'package:slack_app/app/pages/home/widgets/sk_bottom_nav_bar.dart';

class SLDashboard extends GetView<SLDashboardController> {
  const SLDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.find<SLDashboardController>(),
        builder: (cont) {
          return Scaffold(
            body: Container(
              child: Center(
                child: Text("I am dashboard"),
              ),
            ),
            appBar: AppBar(
              title: Row(
                children: [
                  Container(
                    width: 38,
                    height: 38,
                    margin: const EdgeInsets.only(right: 8),
                    child: GestureDetector(
                      onTap: () {
                        controller.toggleDrawer();
                      },
                      child: Container(
                        child: const FlutterLogo(),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                  Text(
                    "mutualmobile",
                    style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              centerTitle: false,
            ),
            bottomNavigationBar: SKBottomNavBar(),
          );
        });
  }
}
