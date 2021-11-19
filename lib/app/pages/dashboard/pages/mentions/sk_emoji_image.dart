import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKEmojiImage extends StatelessWidget {
  const SKEmojiImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "👍🏽",
        style: GoogleFonts.notoColorEmojiCompat(
            textStyle: Get.textTheme.headline5),
      ).paddingAll(16),
    );
  }
}
