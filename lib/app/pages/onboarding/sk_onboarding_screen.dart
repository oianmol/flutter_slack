import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/onboarding/sk_input_workspace_name.dart';
import 'package:slack_app/app/pages/onboarding/sk_onboarding_controller.dart';

class SKOnboardingScreen extends GetView<SKOnboardingController> {
  const SKOnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: Get.find<SKOnboardingController>(),
        builder: (SKOnboardingController controller) {
          return onBoardingScaffold(controller);
        });
  }

  Scaffold onBoardingScaffold(SKOnboardingController controller) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: SafeArea(
          child: MaterialButton(
        color: Colors.white,
        onPressed: () {
          controller.createWorkspace();
        },
        child: Text("Create a Team",
            style: GoogleFonts.notoSans(
                textStyle:
                    Get.textTheme.headline6!.copyWith(color: Colors.black))),
      ).paddingAll(12)),
      body: onboardingBody(controller),
    );
  }

  Center onboardingBody(SKOnboardingController controller) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          avatarContainer(),
          Text("Sign in to Slack",
              style: GoogleFonts.notoSans(
                  textStyle: Get.textTheme.headline6!
                      .copyWith(color: Colors.white70))),
          SKInputWorkspaceName((name) {
            controller.workspaceName = name;
          }),
          const Divider(
            color: Colors.white,
          ).marginSymmetric(horizontal: 12, vertical: 8),
          Text("Direct Messages",
              style: GoogleFonts.notoSans(
                  textStyle:
                      Get.textTheme.headline6!.copyWith(color: Colors.white))),
          Text("Talk one to one with people in your company!",
              style: GoogleFonts.notoSans(
                  textStyle:
                      Get.textTheme.subtitle1!.copyWith(color: Colors.white))),
        ],
      ),
    );
  }

  Widget avatarContainer() {
    return Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            image: const DecorationImage(
                image: NetworkImage(
                    "https://avatars.slack-edge.com/2018-07-20/401750958992_1b07bb3c946bc863bfc6_88.png")),
            borderRadius: BorderRadius.circular(8)),
      ),
    ).marginOnly(bottom: 16);
  }
}
