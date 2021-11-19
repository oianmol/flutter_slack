import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/mentions/sk_emoji_image.dart';

class SKMentionItem extends StatelessWidget {
  const SKMentionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SKEmojiImage(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                          "Prasanna Tolasati reacted in prj-wsa_mm-seguro-int",
                          style: GoogleFonts.notoSans())),
                  Text("57m",
                      style: GoogleFonts.notoSans(
                          textStyle: Get.textTheme.caption))
                ],
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              Text(
                "Anmol Verma",
                style: GoogleFonts.notoSans(
                    textStyle: Get.textTheme.subtitle1!
                        .copyWith(fontWeight: FontWeight.bold)),
              ),
              Text(
                  "@here I will be on PTO tomorrow. Please let me know if there's something needed from me",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.notoSans(
                      textStyle: Get.textTheme.subtitle2!
                          .copyWith(fontWeight: FontWeight.w400))),
              Text(
                "👍🏽 1",
                style: GoogleFonts.notoColorEmojiCompat(
                    textStyle: Get.textTheme.subtitle2),
              )
            ],
          ).paddingAll(8),
        )
      ],
    );
  }
}
