import 'package:flutter/material.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_history_channel_item.dart';

class SKHistoryChannels extends StatelessWidget {
  const SKHistoryChannels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
        SKHistoryChannel(isPrivate: true),
        SKHistoryChannel(
          isPrivate: false,
        ),
      ]),
    );
  }
}
