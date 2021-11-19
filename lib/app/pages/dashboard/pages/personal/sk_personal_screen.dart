import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/widgets/side_menu_footer.dart';

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
      body: CustomScrollView(
        slivers: [
          const SizedBox(height: 8,).sliverBox,
          profileYou().sliverBox,
          whatsStatus().sliverBox,
          footerItem(FooterOption(
                  Icons.notifications_off_outlined, "Pause Notifications"))
              .sliverBox,
          footerItem(FooterOption(Icons.no_accounts, "Set yourself as away"))
              .sliverBox,
          Divider().sliverBox,
          footerItem(FooterOption(
                  Icons.bookmark_outline, "Saved items"))
              .sliverBox,
          footerItem(FooterOption(Icons.person_outline, "View profile"))
              .sliverBox,
          footerItem(FooterOption(
                  Icons.phone_android, "Notifications"))
              .sliverBox,
          footerItem(FooterOption(Icons.settings_outlined, "Preferences"))
              .sliverBox,
        ],
      ),
    );
  }

  Widget whatsStatus() {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black26, width: 1),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.black45,
            ).marginOnly(right: 8),
            Expanded(
              child: Text(
                "What's your status?",
                style: GoogleFonts.notoSans(
                    textStyle: Get.textTheme.subtitle1!
                        .copyWith(color: Colors.black87)),
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Widget profileYou() {
    return ListTile(
      leading: Container(
        child: const SizedBox(
          height: 56,
          width: 56,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
            color: Colors.brown),
      ),
      title: Text(
        "Anmol Verma",
        style: GoogleFonts.notoSans(
            textStyle: Get.textTheme.headline6!.copyWith(color: Colors.black)),
      ),
      subtitle: Text("Active",
          style: GoogleFonts.notoSans(
              textStyle:
                  Get.textTheme.subtitle1!.copyWith(color: Colors.black54))),
    );
  }

  Widget footerItem(FooterOption e) {
    return Row(
      children: [
        Icon(
          e.icon,
          color: Colors.black45,
        ).marginOnly(right: 8),
        Expanded(
          child: Text(e.name,
              style: GoogleFonts.notoSans(
                  color: Colors.black87, textStyle: Get.textTheme.subtitle1)),
        )
      ],
    ).paddingAll(4).marginOnly(left: 16, top: 16);
  }
}
