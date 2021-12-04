import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/sk_new_thread_channel.dart';

class SKNewThreadScreen extends StatelessWidget {
  final ScrollController controller;

  const SKNewThreadScreen(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),
      child: CustomScrollView(
        controller: controller,
        slivers: [
          buildHeader().sliverBox,
          toFieldSearch().sliverBox,
          const Divider().sliverBox,
          SKNewThreadChannel("Jack 1").sliverBox,
          SKNewThreadChannel("Jack 2").sliverBox,
          SKNewThreadChannel("Jack 3").sliverBox,
          SKNewThreadChannel("Jack 4").sliverBox,
          SKNewThreadChannel("Jack 5").sliverBox,
          SKNewThreadChannel("Jack 6").sliverBox,
          SKNewThreadChannel("Jack 8").sliverBox,
          SKNewThreadChannel("Jack 7").sliverBox,
          SKNewThreadChannel("Jack 1").sliverBox,
          SKNewThreadChannel("Jack 2").sliverBox,
          SKNewThreadChannel("Jack 3").sliverBox,
          SKNewThreadChannel("Jack 4").sliverBox,
          SKNewThreadChannel("Jack 5").sliverBox,
          SKNewThreadChannel("Jack 6").sliverBox,
          SKNewThreadChannel("Jack 8").sliverBox,
          SKNewThreadChannel("Jack 7").sliverBox,
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.clear,
            color: Colors.black54,
          ),
        ),
        Text(
          "New Message",
          style: GoogleFonts.notoSans(
              textStyle: Get.textTheme.subtitle1!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        IconButton(
          // spacing factor right
          onPressed: () {},
          icon: const Icon(
            Icons.clear,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget toFieldSearch() {
    return Row(
      children: [
        Text(
          "To:",
          style: GoogleFonts.notoSans(
              textStyle:
                  Get.textTheme.subtitle1!.copyWith(color: Colors.black54)),
        ).marginOnly(right: 16, left: 16, top: 12),
        Expanded(
          child: TextField(
            style: GoogleFonts.notoSans(
                textStyle: Get.textTheme.subtitle1!.copyWith(
                    color: Colors.black87, fontWeight: FontWeight.w400)),
            decoration: InputDecoration.collapsed(
                hintText: "Search for a channel or conversation",
                hintStyle: GoogleFonts.notoSans(
                    textStyle: Get.textTheme.subtitle1!.copyWith(
                        color: Colors.black54, fontWeight: FontWeight.w400))),
          ).marginOnly(right: 16, left: 4, top: 12),
        )
      ],
    );
  }
}
