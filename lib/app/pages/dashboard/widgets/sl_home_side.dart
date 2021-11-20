import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/controller/sl_dashboard_controller.dart';
import 'package:slack_app/app/pages/dashboard/widgets/side_menu_footer.dart';

class SLHomeSide extends GetView<SLDashboardController> {
  const SLHomeSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: Get.find<SLDashboardController>(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.brown,
          appBar: workspaces(),
          body: organizationsList(),
        );
      },
    );
  }

  AppBar workspaces() {
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: Text(
        "Workspaces",
        style: GoogleFonts.notoSans(
            textStyle: Get.textTheme.headline5!.copyWith(color: Colors.white),
            fontWeight: FontWeight.bold),
      ),
    );
  }

  organizationsList() {
    return CustomScrollView(
      slivers: [
        GestureDetector(
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8),
                width: 72,
                height: 72,
                decoration: outerDecoration(),
                child: organizationLogo(),
              ),
              Expanded(
                child: orgDetails(),
              )
            ],
          ),
          onTap: () {
            controller.toggleDrawer();
          },
        ).sliverBox,
        SliverFillRemaining(
          hasScrollBody: false,
          child: SideMenuFooter(
            options: [
              FooterOption(Icons.add_circle_outline, "Add a Workspace"),
              FooterOption(Icons.settings_outlined, "Preferences"),
              FooterOption(Icons.help_outline, "Help")
            ],
          ),
        ),
      ],
    );
  }

  ListTile orgDetails() {
    return ListTile(
      title: Text(
        "mutualmobile",
        style: GoogleFonts.notoSans(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            textStyle: Get.textTheme.headline6),
      ),
      subtitle: Text(
        "mutualmobile.slack.com",
        style: GoogleFonts.notoSans(
            color: Colors.white60, textStyle: Get.textTheme.subtitle2),
      ),
      trailing: Icon(
        Icons.more_horiz,
        color: Colors.white,
      ),
    );
  }

  Container organizationLogo() {
    return Container(
      margin: const EdgeInsets.all(4),
      width: 64,
      height: 64,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          image: const DecorationImage(
              image: NetworkImage(
                  "https://avatars.slack-edge.com/2018-07-20/401750958992_1b07bb3c946bc863bfc6_88.png")),
          borderRadius: BorderRadius.circular(12)),
    );
  }

  BoxDecoration outerDecoration() {
    return BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: BorderRadius.circular(16));
  }
}
