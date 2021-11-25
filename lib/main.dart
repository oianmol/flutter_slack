import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/chat/sk_chat_message.dart';
import 'package:slack_app/app/pages/chat/sk_chat_screen.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sk_dashboard_root.dart';
import 'package:slack_app/di/sk_chat_bindings.dart';
import 'package:slack_app/di/sk_home_bindings.dart';
import 'package:slack_app/navigation/routes.dart';

void main() {
  runApp(const SlackApp());
}

class SlackApp extends StatelessWidget {
  const SlackApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return materialApp();
  }

  GetMaterialApp materialApp() {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      getPages: [
        GetPage(
            name: RouteNames.home,
            page: () => SLHomePage(),
            binding: SKHomeBindings()),
        GetPage(
            name: RouteNames.chat,
            page: () => SKChatScreen(),
            binding: SKChatBindings())
      ],
    );
  }
}
