import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/set_status/sk_status_item.dart';

class SKSetStatusScreen extends StatelessWidget {
  const SKSetStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.85,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))),
      child: CustomScrollView(
        slivers: [
          const SizedBox(
            height: 8,
          ).sliverBox,
          bottomSheetHeader().sliverBox,
          greySeparator().sliverBox,
          whatsYourStatus().sliverBox,
          const Divider().sliverBox,
          clearStatusAfter().sliverBox,
          commonHeader("RECENT").sliverBox,
          statusListRecent(),
          commonHeader("FOR MUTUALMOBILE").sliverBox,
          statusListRecent()
        ],
      ),
    );
  }

  Container commonHeader(text) {
    return Container(
      color: Colors.grey.shade50,
      height: 38,
      alignment: Alignment.bottomLeft,
      child: Text(
        text,
        style: GoogleFonts.notoSans(
            textStyle:
                Get.textTheme.caption!.copyWith(fontWeight: FontWeight.w300)),
      ),
      padding: const EdgeInsets.only(left: 16, bottom: 8),
    );
  }

  Container greySeparator() {
    return Container(
      color: Colors.grey.shade50,
      height: 32,
    );
  }

  Widget bottomSheetHeader() {
    return AppBar(
      elevation: 1,
      toolbarHeight: 48,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Text(
        "Set a status",
        style: GoogleFonts.notoSans(
            textStyle:
                Get.textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold)),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text(
              "Done",
              style: GoogleFonts.notoSans(),
            ))
      ],
    );
  }

  Widget whatsYourStatus() {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.black54,
            )),
        Expanded(
          child: TextField(
            style: GoogleFonts.notoSans(
                textStyle: Get.textTheme.subtitle2!.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w400)),
            decoration: InputDecoration.collapsed(
                hintText: "What's your status?",
                hintStyle: GoogleFonts.notoSans(
                    textStyle: Get.textTheme.subtitle2!
                        .copyWith(color: Colors.black54))),
          ),
        )
      ],
    );
  }

  Widget clearStatusAfter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Clear after...",
          style: GoogleFonts.notoSans(textStyle: Get.textTheme.subtitle2),
        ).marginOnly(left: 16),
        Row(
          children: [
            Text(
              "Today",
              style: GoogleFonts.notoSans(
                  textStyle:
                      Get.textTheme.subtitle2!.copyWith(color: Colors.black87)),
            ).marginOnly(right: 8),
            const Icon(
              Icons.navigate_next,
              color: Colors.black54,
            ).marginOnly(right: 8)
          ],
        )
      ],
    ).marginOnly(bottom: 8);
  }

  statusListRecent() {
    return SliverList(
        delegate: SliverChildListDelegate([
      const SKStatusItem("👍", "PTO NOV 19"),
      const Divider(),
      const SKStatusItem("📋", "In a Meeting"),
      const Divider(),
      const SKStatusItem("😀", "Some sample status"),
      const Divider(),
      const SKStatusItem("😎", "Some status 123"),
      const Divider(),
      const SKStatusItem("🎃", "Happy Halloween!")
    ]));
  }
}
