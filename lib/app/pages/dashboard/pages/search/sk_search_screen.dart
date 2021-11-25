import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SKSearchScreen extends StatelessWidget {
  const SKSearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: searchContainer(),
      ),
      body: CustomScrollView(
        slivers: [
          const SizedBox(
            height: 8,
          ).sliverBox,
          commonListTile(
                  "Browse People", Icons.event_note, Icons.arrow_forward_ios)
              .sliverBox,
          commonListTile("Browse Channels", Icons.tag, Icons.arrow_forward_ios)
              .sliverBox,
          const Divider().sliverBox,
          Text(
            "Recent Searches",
            style: GoogleFonts.notoSans(
                textStyle: Get.textTheme.subtitle2!
                    .copyWith(fontWeight: FontWeight.bold)),
          ).marginOnly(left: 16, top: 8).sliverBox,
          const SizedBox(
            height: 8,
          ).sliverBox,
          commonListTile("someon", Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("in:#android-india compose",
                  Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("someon", Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("in:#android-india compose",
                  Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("someon", Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("in:#android-india compose",
                  Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          const SizedBox(
            height: 8,
          ).sliverBox,
          const Divider().sliverBox,
          const SizedBox(
            height: 8,
          ).sliverBox,
          Text(
            "Narrow Your Search",
            style: GoogleFonts.notoSans(
                textStyle: Get.textTheme.subtitle2!
                    .copyWith(fontWeight: FontWeight.bold)),
          ).marginOnly(left: 16, top: 8).sliverBox,
          const SizedBox(
            height: 8,
          ).sliverBox,
          commonListTile("someon", Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("in:#android-india compose",
                  Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("someon", Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("in:#android-india compose",
                  Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("someon", Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
          commonListTile("in:#android-india compose",
                  Icons.watch_later_outlined, Icons.clear)
              .sliverBox,
        ],
      ),
    );
  }

  Container searchContainer() {
    return Container(
      height: 40,
      padding: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
          color: Get.theme.backgroundColor.withOpacity(0.4),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(CupertinoIcons.search, color: Colors.white70)
              .marginOnly(right: 8),
          Expanded(
            child: TextField(
              style: GoogleFonts.notoSans(
                  textStyle: Get.textTheme.subtitle2!
                      .copyWith(fontWeight: FontWeight.w400)),
              decoration: InputDecoration.collapsed(
                  hintText: "Search for messages and files",
                  hintStyle: GoogleFonts.notoSans(
                      textStyle: Get.textTheme.subtitle2!
                          .copyWith(fontWeight: FontWeight.w400))),
            ),
          )
        ],
      ),
    );
  }

  Widget commonListTile(
      String title, IconData leadingIcon, IconData trailingIcon) {
    return Row(
      children: [
        Icon(
          leadingIcon,
          size: 20,
        ).marginOnly(right: 8),
        Expanded(
          child: Text(title,
                  style:
                      GoogleFonts.notoSans(textStyle: Get.textTheme.subtitle1))
              .paddingAll(4),
        ),
        Icon(
          trailingIcon,
          size: 18,
        ).marginOnly(right: 16),
      ],
    ).marginOnly(left: 8, top: 8);
  }
}
