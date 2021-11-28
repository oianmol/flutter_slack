import 'package:get/get.dart';
import 'package:slack_app/navigation/routes.dart';
import 'package:slack_app/src/generated/protos/me/slack/slackbase.pbgrpc.dart';

class SKOnboardingController extends GetxController {
  var workspaceName = "";


  createWorkspace() {
    if (workspaceName
        .trim()
        .isNotEmpty) {
      var serviceClient = Get.find<SlackServiceClient>();
      Get.offAllNamed(RouteNames.home);
    }
  }
}
