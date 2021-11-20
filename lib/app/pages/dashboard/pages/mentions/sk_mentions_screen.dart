import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/mentions/sk_mention_item.dart';

class SKMentionsScreen extends StatelessWidget {
  const SKMentionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Get.theme.primaryColor,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
          const SKMentionItem().sliverBox,
          const Divider().sliverBox,
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        "Mentions & Reactions",
        style: GoogleFonts.notoSans(fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
    );
  }
}
