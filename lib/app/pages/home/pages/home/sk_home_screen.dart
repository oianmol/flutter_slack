import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/home/pages/home/sk_home_controller.dart';
import 'package:slack_app/app/pages/home/pages/home/widgets/sk_home_jumpto.dart';

class SKHomeScreen extends GetView<SKHomeController> {
  final SKHomeController _controller;

  SKHomeScreen({Key? key})
      : _controller = Get.put(SKHomeController()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: _controller,
        builder: (cont) {
          return CustomScrollView(
            slivers: [SKHomeJumpTo().sliverBox],
          );
        });
  }
}
