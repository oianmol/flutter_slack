import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKInputWorkspaceName extends StatelessWidget {

  final Function(String name) nameChange;

  const SKInputWorkspaceName(this.nameChange, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Align(child: TextField(
            onChanged: (newValue){
              nameChange.call(newValue);
            },
            style: GoogleFonts.notoSans(
                textStyle:
                Get.textTheme.headline6!.copyWith(color: Colors.white)),
            textAlign: TextAlign.end,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "yourteam",
                labelStyle: GoogleFonts.notoSans(
                    textStyle:
                    Get.textTheme.headline6!.copyWith(color: Colors.white)),
                hintStyle: GoogleFonts.notoSans(
                    textStyle: Get.textTheme.headline6!
                        .copyWith(color: Colors.white70))),
          ),alignment: Alignment.centerRight,),
        ),
        Expanded(child: Text(
          ".slack.com",
          style: GoogleFonts.notoSans(
              textStyle:
              Get.textTheme.headline6!.copyWith(color: Colors.white)),
        ),)
      ],
    );
  }
}
