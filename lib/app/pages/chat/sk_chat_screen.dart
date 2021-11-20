import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/chat/sk_chat_message.dart';

class SKChatScreen extends StatelessWidget {
  const SKChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(child: chatMessages(),),
    );
  }

  Widget chatMessages() {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
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
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
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
            ],
          ),
        )
      ],
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
            "🔒 android-india",
            style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
          ),
          Text(
            "24 members >",
            style: GoogleFonts.notoSans(textStyle: Get.textTheme.caption),
          )
        ],
      ),
    );
  }
}
