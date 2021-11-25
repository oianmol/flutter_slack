import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slack_app/app/pages/chat/sk_chat_message.dart';
import 'package:slack_app/app/pages/chat/sk_chat_screen.dart';
import 'package:slack_app/app/pages/dashboard/widgets/sk_dashboard_root.dart';
import 'package:slack_app/app/styles/sk_app_theme.dart';
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
      theme: lightThemeData(),
      darkTheme: darkThemeData(),
      themeMode: ThemeMode.system,
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

  ThemeData darkThemeData() {
    return ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black87,
        dividerColor: Colors.white54,
        colorScheme: AppTheme.darkColorScheme,
        iconTheme: const IconThemeData(color: Colors.white70));
  }

  ThemeData lightThemeData() {
    return ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        dividerColor: Colors.black12,
        colorScheme: AppTheme.lightColorScheme,
        iconTheme: const IconThemeData(color: Colors.black54));
  }
}
