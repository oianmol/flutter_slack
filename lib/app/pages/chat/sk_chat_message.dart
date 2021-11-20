import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKChatMessage extends StatelessWidget {
  const SKChatMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: messageLeadingImage(),
      title: messageTitle(),
      subtitle: messageContent(),
    );
  }

  Text messageContent() {
    return Text("We are @here Please join the android sync!",
        style: GoogleFonts.notoSans(
            textStyle:
                Get.textTheme.subtitle2!.copyWith(color: Colors.black87)));
  }

  Container messageLeadingImage() {
    return Container(
      child: const SizedBox(
        height: 36,
        width: 36,
      ),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: const DecorationImage(
              image: NetworkImage(
                  "https://ca.slack-edge.com/T02TLUWLZ-U2ZG961MW-2bda0fcef939-512")),
          borderRadius: BorderRadius.circular(8),),
    );
  }

  Wrap messageTitle() {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          "Anmol Verma 🪧 ",
          style: GoogleFonts.notoSans(
              textStyle: Get.textTheme.subtitle1!.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        Text(
          "5:04 PM",
          style: GoogleFonts.notoSans(
              textStyle:
                  Get.textTheme.caption!.copyWith(color: Colors.black54)),
        )
      ],
    );
  }
}
