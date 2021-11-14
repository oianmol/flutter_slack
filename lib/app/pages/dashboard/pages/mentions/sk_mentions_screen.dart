import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SKMentionsScreen extends StatelessWidget {
  const SKMentionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mentions & Reactions",
          style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
    );
  }
}
