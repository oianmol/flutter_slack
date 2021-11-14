import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKRecentUserItem extends StatelessWidget {
  const SKRecentUserItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
              child: const FlutterLogo(
                size: 52,
              ),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26, width: 1),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12))),
          Text(
            "Prasanna Tolasati",
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.notoSans(textStyle: Get.textTheme.caption),
          ).paddingAll(4)
        ],
      ),
    );
  }
}
