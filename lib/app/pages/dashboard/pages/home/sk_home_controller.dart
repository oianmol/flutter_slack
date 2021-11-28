import 'package:get/get.dart';
import 'package:slack_app/src/generated/protos/me/slack/slackbase.pbgrpc.dart';

class SKHomeController extends GetxController {
  final SlackServiceClient serviceClient = Get.find();

  @override
  void onInit() {
    super.onInit();
  }
}
