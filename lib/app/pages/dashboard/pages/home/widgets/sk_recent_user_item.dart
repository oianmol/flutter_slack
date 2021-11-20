import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKRecentUserItem extends StatelessWidget {
  const SKRecentUserItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68,
      margin: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
              height: 52,
              width: 52,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26, width: 1),
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                      image: NetworkImage(
                          "https://ca.slack-edge.com/T02TLUWLZ-UPAEPG4LV-3032624d37a5-512")),
                  borderRadius: BorderRadius.circular(12))),
          Text(
            "Carl Jules",
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.notoSans(textStyle: Get.textTheme.subtitle2!.copyWith(color: Colors.black87)),
          ).paddingAll(4)
        ],
      ),
    );
  }
}
