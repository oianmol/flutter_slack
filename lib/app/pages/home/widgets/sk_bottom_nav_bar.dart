import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SKBottomNavBar extends StatelessWidget {
  const SKBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black38,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: GoogleFonts.notoSans(),
        unselectedLabelStyle:GoogleFonts.notoSans(),
        items: navBarItems());
  }

  List<BottomNavigationBarItem> navBarItems() {
    return const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.messenger_rounded), label: "DMs"),
        BottomNavigationBarItem(
            icon: Icon(Icons.alternate_email), label: "Mentions"),
        BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Search"),
        BottomNavigationBarItem(
            icon: Icon(Icons.support_agent), label: "You")
      ];
  }
}
