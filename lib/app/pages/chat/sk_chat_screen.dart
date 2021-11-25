import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/chat/sk_chat_controller.dart';
import 'package:slack_app/app/pages/chat/sk_chat_message.dart';

class SKChatScreen extends GetView<SKChatController> {
  const SKChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.find<SKChatController>(),
      builder: (controller) {
        return Scaffold(
          appBar: buildAppBar(),
          backgroundColor: Colors.white,
          body: SafeArea(
            child: chatMessages(),
          ),
        );
      },
    );
  }

  Widget chatMessages() {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            reverse: true,
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
        textfieldContainer()
      ],
    );
  }

  Container textfieldContainer() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Divider(),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: controller.isExpanded ? 200 : 48,
            child: sendMessageField(),
          ),
          AnimatedCrossFade(
            crossFadeState: controller.showMessageOptions
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 250),
            firstChild: messageOptionsLayout(),
            secondChild: Container(),
          )
        ],
      ),
    );
  }

  TextField sendMessageField() {
    return TextField(
      style: GoogleFonts.notoSans(),
      focusNode: controller.messageFieldFocus(),
      maxLines: 10,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Message android-india",
          hintStyle: GoogleFonts.notoSans(),
          suffixIcon: suffixIcon()),
    );
  }

  IconButton suffixIcon() {
    return IconButton(
        onPressed: () {
          controller.expandCollapse();
        },
        icon: controller.showMessageOptions
            ? const Icon(
                Icons.close_fullscreen,
                color: Colors.black54,
              )
            : const Icon(
                Icons.send,
                color: Colors.black38,
              ));
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

  messageOptionsLayout() {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.black54,
                  size: 20,
                ).marginOnly(right: 16),
                const Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black54,
                  size: 20,
                ).marginOnly(right: 16),
                const Icon(
                  Icons.alternate_email,
                  size: 20,
                  color: Colors.black54,
                ).marginOnly(right: 16),
                const Icon(
                  Icons.monochrome_photos_outlined,
                  color: Colors.black54,
                  size: 20,
                ).marginOnly(right: 16),
                const Icon(
                  Icons.mic,
                  color: Colors.black54,
                  size: 20,
                ).marginOnly(right: 16),
                const Icon(
                  Icons.camera,
                  color: Colors.black54,
                  size: 20,
                ).marginOnly(right: 16),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.send,
              size: 20,
              color: Colors.black38,
            ),
          ).marginOnly(bottom: 8)
        ],
      ),
      height: 24,
    ).paddingAll(4);
  }
}
