import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKChatMessage extends StatelessWidget {
  const SKChatMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        child: const SizedBox(
          height: 32,
          width: 32,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: const DecorationImage(
                image: NetworkImage(
                    "https://ca.slack-edge.com/T02TLUWLZ-U2ZG961MW-2bda0fcef939-512")),
            borderRadius: BorderRadius.circular(8),
            color: Colors.brown),
      ),
      title: Text(
        "Anmol Verma 🪧 ",
        style: GoogleFonts.notoSans(
            textStyle: Get.textTheme.subtitle1!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      subtitle: Text("We are @here Please join the android sync!",
          style: GoogleFonts.notoSans(
              textStyle:
                  Get.textTheme.subtitle2!.copyWith(color: Colors.black87))),
    );
  }
}
