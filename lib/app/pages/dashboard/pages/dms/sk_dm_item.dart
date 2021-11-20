import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKDirectMessageItem extends StatelessWidget {
  const SKDirectMessageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Container(
        child: const SizedBox(
          height: 52,
          width: 52,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: Colors.brown),
      ),
      trailing: Text("1d ago",
          style: GoogleFonts.notoSans(
              textStyle: Get.textTheme.caption)),
      title: Text(
        "Saurabh Mishra",
        style: GoogleFonts.notoSans(
            textStyle: Get.textTheme.headline6!.copyWith(color: Colors.black)),
      ),
      subtitle: Text("You: Have a great weekend 🙂",
          style: GoogleFonts.notoSans(
              textStyle:
              Get.textTheme.subtitle1!.copyWith(color: Colors.black87))),
    );;
  }
}
