import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/sk_home_controller.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/sk_newthread_screen.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_group_channels_widget.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_home_jumpto.dart';

class SKHomeScreen extends GetView<SKHomeController> {
  final SKHomeController _controller;
  final Null Function() callback;

  SKHomeScreen(this.callback, {Key? key})
      : _controller = Get.put(SKHomeController()),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: _controller,
        builder: (cont) {
          return Scaffold(
            appBar: dashboardAppBar(),
            floatingActionButton: newThreadFAB(),
            body: buildBodyHome(),
          );
        });
  }

  CustomScrollView buildBodyHome() {
    return CustomScrollView(
      slivers: [
        const SKHomeJumpTo().sliverBox,
        threadsBlock().sliverBox,
        const SKGroupChannelsWidget(title: "Starred", canStart: false)
            .sliverBox,
        const SKGroupChannelsWidget(title: "Direct Messages", canStart: true)
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
              style: GoogleFonts.notoSans(textStyle: Get.textTheme.subtitle1),
            ).paddingAll(16)
          ],
        ).marginOnly(left: 8).sliverBox
      ],
    );
  }

  FloatingActionButton newThreadFAB() {
    return FloatingActionButton(
      onPressed: () {
        newThreadBottomSheet();
      },
      backgroundColor: Get.theme.primaryColor,
      child: const Icon(
        Icons.message,
        color: Colors.white,
      ),
    );
  }

  AppBar dashboardAppBar() {
    return AppBar(
      title: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            margin: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () {
                callback.call();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://avatars.slack-edge.com/2018-07-20/401750958992_1b07bb3c946bc863bfc6_88.png")),
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
    );
  }

  Widget threadsBlock() {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.message_outlined,
              size: 16,
            ).paddingOnly(right: 16),
            Text(
              "Threads",
              style: GoogleFonts.notoSans(),
            )
          ],
        ).marginOnly(bottom: 8),
        width: Get.width,
      ),
      onTap: () {},
    ).marginOnly(
      left: 8,
    );
  }

  void newThreadBottomSheet() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        context: Get.context!,
        builder: (context) {
          return DraggableScrollableSheet(
              initialChildSize: 0.8,
              maxChildSize: 0.9,
              minChildSize: 0.5,
              builder: (context, controller) {
                return SKNewThreadScreen(controller);
              });
        });
  }
}
