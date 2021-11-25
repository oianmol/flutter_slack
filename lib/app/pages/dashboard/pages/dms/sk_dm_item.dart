import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKDirectMessageItem extends StatelessWidget {
  const SKDirectMessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: const SizedBox(
          height: 48,
          width: 48,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
                image: NetworkImage(
                    "https://ca.slack-edge.com/T02TLUWLZ-UPAEPG4LV-3032624d37a5-512")),
            color: Colors.brown),
      ),
      trailing: Text("1d ago",
          style: GoogleFonts.notoSans(textStyle: Get.textTheme.caption)),
      title: Text(
        "Carl Jules",
        style: GoogleFonts.notoSans(
            textStyle: Get.textTheme.subtitle1),
      ),
      subtitle: Text("You: Have a great weekend 🙂",
          style: GoogleFonts.notoSans(
              textStyle:
                  Get.textTheme.subtitle2)),
    );
  }
}
