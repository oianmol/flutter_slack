import 'package:flutter/material.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_recent_user_item.dart';

class SKRecentTextUsers extends StatelessWidget {
  const SKRecentTextUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem(),
        SKRecentUserItem()
      ],
    ),height: 120,);
  }
}
