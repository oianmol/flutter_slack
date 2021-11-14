import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/sk_home_controller.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_group_channels_widget.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_home_jumpto.dart';

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
            slivers: [
              const SKHomeJumpTo().sliverBox,
              threadsBlock().sliverBox,
              const SKGroupChannelsWidget(title: "Starred", canStart: false)
                  .sliverBox,
              const SKGroupChannelsWidget(
                      title: "Direct Messages", canStart: true)
                  .sliverBox,
              const SKGroupChannelsWidget(title: "Channels", canStart: true)
                  .sliverBox,
              const SKGroupChannelsWidget(title: "Connections", canStart: false)
                  .sliverBox,
              Row(
                children: [
                  const Icon(
                    Icons.add,
                    color: Colors.grey,
                  ).paddingAll(8),
                  Text(
                    "Add teammates",
                    style: GoogleFonts.notoSans(
                        textStyle: Get.textTheme.subtitle1),
                  ).paddingAll(16)
                ],
              ).marginOnly(left: 8).sliverBox
            ],
          );
        });
  }

  Widget threadsBlock() {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.message_outlined,
              color: Colors.grey,
            ).paddingOnly(right: 16),
            Text(
              "Threads",
              style: GoogleFonts.notoSans(textStyle: Get.textTheme.subtitle1),
            )
          ],
        ),
        width: Get.width,
      ),
      onTap: () {},
    ).marginOnly(
      left: 8,
    );
  }
}
