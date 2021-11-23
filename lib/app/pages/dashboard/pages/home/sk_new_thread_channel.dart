import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKNewThreadChannel extends StatelessWidget {
  final String username;

  const SKNewThreadChannel(this.username, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.all(8),
          child: const SizedBox(
            height: 36,
            width: 36,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://ca.slack-edge.com/T02TLUWLZ-UPAEPG4LV-3032624d37a5-512")),
              borderRadius: BorderRadius.circular(8)),
        ),
        Expanded(
          child: Text(
            username,
            style: GoogleFonts.notoSans(
                textStyle: Get.textTheme.subtitle2!
                    .copyWith(fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }
}
