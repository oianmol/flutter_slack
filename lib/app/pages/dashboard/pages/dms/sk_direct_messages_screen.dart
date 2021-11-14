import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_home_jumpto.dart';

class SKDirectMessagesScreen extends StatelessWidget {
  const SKDirectMessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Direct Messages",
          style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [SKHomeJumpTo()],
      ),
    );
  }
}
