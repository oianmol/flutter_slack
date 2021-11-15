import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKSearchScreen extends StatelessWidget {
  const SKSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: Colors.brown.shade400,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8)),
          child: Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.search_sharp, color: Colors.white70)
                    .marginOnly(right: 8),
                Expanded(
                  child: TextField(
                    style: GoogleFonts.notoSans(
                        textStyle: Get.textTheme.subtitle2!
                            .copyWith(color: Colors.white,fontWeight: FontWeight.w400)),
                    decoration: InputDecoration.collapsed(
                        hintText: "Search for messages and files",
                        hintStyle: GoogleFonts.notoSans(
                            textStyle: Get.textTheme.subtitle2!
                                .copyWith(color: Colors.white,fontWeight: FontWeight.w400))),
                  ),
                )
              ],
            ),
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
