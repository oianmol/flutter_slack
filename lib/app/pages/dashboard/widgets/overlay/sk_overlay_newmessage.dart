import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/dashboard/widgets/overlay/sk_overlay_manager.dart';

class SKOverlayNewMessage extends StatelessWidget {
  const SKOverlayNewMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: SKOverlayManager.appLoader.loaderShowingNotifier,
      builder: (context, value, child) {
        if (value) {
          return FloatingActionButton(
            onPressed: () {},
            backgroundColor: Get.theme.primaryColor,
            child: const Icon(
              Icons.message,
              color: Colors.white,
            ),
          ).marginOnly(right: 16, bottom: 16);
        } else {
          return Container();
        }
      },
    );
  }
}
