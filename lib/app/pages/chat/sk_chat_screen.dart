import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/chat/sk_chat_message.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_home_jumpto.dart';

class SKChatScreen extends StatelessWidget {
  const SKChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: CustomScrollView(
        slivers: [
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
          const SKChatMessage().sliverBox,
        ],
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          margin: const EdgeInsets.only(bottom: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            const Divider(),
            TextField(
              style: GoogleFonts.notoSans(),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Message android-india",
                  hintStyle: GoogleFonts.notoSans(),
                  suffixIcon: const Icon(
                    Icons.send,
                    color: Colors.black38,
                  )),
            )
          ],),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
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
    );
  }
}
