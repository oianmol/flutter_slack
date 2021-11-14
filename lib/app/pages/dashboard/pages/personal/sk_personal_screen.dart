import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SKPersonalScreen extends StatelessWidget {
  const SKPersonalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "You",
          style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
    );
  }
}
