import 'package:get/get.dart';
import 'package:slack_app/app/pages/onboarding/sk_onboarding_controller.dart';

class SKOnboardingBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(SKOnboardingController());
  }

}