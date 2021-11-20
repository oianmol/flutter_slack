import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SKChatScreen extends StatelessWidget {
  const SKChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        titleTextStyle: GoogleFonts.notoSans(color: Colors.black87),
        title: Column(
          children: [
            Text(
              "android-india",
              style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
            ),
            Text("24 members >")
          ],
        ),
      ),
    );
  }
}
