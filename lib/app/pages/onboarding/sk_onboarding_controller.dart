import 'package:get/get.dart';
import 'package:slack_app/navigation/routes.dart';

class SKOnboardingController extends GetxController {
  var workspaceName = "";


  createWorkspace() {
    if (workspaceName
        .trim()
        .isNotEmpty) {
      Get.offAllNamed(RouteNames.home);
    }
  }
}
