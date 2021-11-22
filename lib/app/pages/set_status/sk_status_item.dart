import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKStatusItem extends StatelessWidget {
  final String emoji;
  final String status;

  const SKStatusItem(this.emoji, this.status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          emoji,
          style: GoogleFonts.notoColorEmojiCompat(
              textStyle: Get.textTheme.headline6),
        ).marginOnly(right: 16, left: 8, bottom: 8,top: 8),
        Expanded(
          child: Text(status,
              style: GoogleFonts.notoSans(textStyle: Get.textTheme.subtitle1)),
        )
      ],
    );
  }
}
