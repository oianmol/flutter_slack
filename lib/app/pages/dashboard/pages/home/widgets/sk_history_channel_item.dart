import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKHistoryChannel extends StatelessWidget {
  final bool isPrivate;

  const SKHistoryChannel({Key? key, required this.isPrivate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isPrivate
            ? const Icon(Icons.lock_outline_rounded)
            : Text(
                "#",
                style: textStyle(),
              ).paddingAll(8),
        Text(
          "flutter_hyd",
          style: textStyle(),
        ).paddingAll(8),
      ],
    ).marginOnly(left: 16);
  }

  TextStyle textStyle() {
    return GoogleFonts.notoSans(
        textStyle: Get.textTheme.subtitle1!.copyWith(color: Colors.black));
  }
}
