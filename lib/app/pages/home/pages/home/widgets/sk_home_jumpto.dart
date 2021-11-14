import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/home/pages/home/widgets/sk_history_channels.dart';
import 'package:slack_app/app/pages/home/pages/home/widgets/sk_recent_text_users.dart';

class SKHomeJumpTo extends StatelessWidget {
  const SKHomeJumpTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: jumpToTextContainer(
          jumpToText(),
          const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          const EdgeInsets.all(12)),
      onTap: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: Colors.white,
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Wrap(
                children: [
                  Container(
                    height: Get.height * 0.85,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0))),
                    child: CustomScrollView(
                      slivers: [
                        jumpToTFRow().sliverBox,
                        const SKRecentTextUsers().sliverBox,
                        Text(
                          "History",
                          style: GoogleFonts.notoSans(
                              textStyle: GoogleFonts.notoSans(
                                  textStyle: Get.textTheme.subtitle1,fontWeight: FontWeight.bold)),
                        ).marginOnly(left: 24).sliverBox,
                        const SKHistoryChannels()
                      ],
                    ),
                  )
                ],
              );
            });
      },
    );
  }

  Row jumpToTFRow() {
    return Row(
      children: [
        Expanded(
          child: jumpToTextContainer(jumpToEditText(), const EdgeInsets.all(0),
              const EdgeInsets.only(left: 12, right: 0, top: 8, bottom: 8)),
        ),
        TextButton(
          child: const Text("Cancel"),
          onPressed: () {
            Get.back();
          },
        ).paddingOnly(right: 4)
      ],
    );
  }

  Container jumpToTextContainer(child, padding, margin) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: jumpToDecoration(),
      child: child,
    );
  }

  BoxDecoration jumpToDecoration() {
    return BoxDecoration(
        border: Border.all(color: Colors.black26, width: 1),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8));
  }

  Text jumpToText() {
    return Text(
      "Jump to...",
      style: GoogleFonts.notoSans(),
    );
  }

  jumpToEditText() {
    return Row(
      children: [
        Icon(Icons.search).paddingAll(8),
        Expanded(
          child: TextField(
            style: GoogleFonts.notoSans(),
            decoration: const InputDecoration.collapsed(hintText: "Jump to..."),
          ),
        ),
      ],
    );
  }
}
