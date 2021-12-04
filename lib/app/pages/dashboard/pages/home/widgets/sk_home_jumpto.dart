import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_history_channels.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_recent_text_users.dart';

class SKHomeJumpTo extends StatelessWidget {
  const SKHomeJumpTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        child: jumpToTextContainer(
            jumpToText(),
            const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            const EdgeInsets.all(12)),
        onTap: () {
          final FocusNode jumpToFocus = FocusNode();
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return DraggableScrollableSheet(
                    maxChildSize: 0.9,
                    minChildSize: 0.4,
                    initialChildSize: 0.9,
                    builder: (context, scrollController) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Get.theme.backgroundColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0))),
                        child: CustomScrollView(
                          controller: scrollController,
                          slivers: [
                            const SizedBox(
                              height: 8,
                            ).sliverBox,
                            jumpToTFRow(jumpToFocus).sliverBox,
                            const SKRecentTextUsers().sliverBox,
                            Text(
                              "History",
                              style: GoogleFonts.notoSans(
                                  textStyle: GoogleFonts.notoSans(
                                      textStyle: Get.textTheme.subtitle1,
                                      fontWeight: FontWeight.bold)),
                            )
                                .marginOnly(left: 24, bottom: 8)
                                .sliverBox,
                            const SKHistoryChannels()
                          ],
                        ),
                      );
                    });
              });
          jumpToFocus.requestFocus();
        },
      ),
      width: Get.width,
    );
  }

  Row jumpToTFRow(FocusNode jumpToFocus) {
    return Row(
      children: [
        Expanded(
          child: jumpToTextContainer(
              jumpToEditText(jumpToFocus),
              const EdgeInsets.all(0),
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
        border: Border.all(
            color: Get.isDarkMode ? Colors.white30 : Colors.black26, width: 1),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8));
  }

  Text jumpToText() {
    return Text(
      "Jump to...",
      style: GoogleFonts.notoSans(),
    );
  }

  jumpToEditText(FocusNode jumpToFocus) {
    return Row(
      children: [
        const Icon(
          Icons.search,
          size: 20,
        ).paddingAll(8),
        Expanded(
          child: TextField(
            style: GoogleFonts.notoSans(),
            focusNode: jumpToFocus,
            decoration: const InputDecoration.collapsed(hintText: "Jump to..."),
          ),
        ),
      ],
    );
  }
}
