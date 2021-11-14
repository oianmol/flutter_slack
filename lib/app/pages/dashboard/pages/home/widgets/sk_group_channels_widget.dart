import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_history_channel_item.dart';
import 'package:slack_app/app/pages/dashboard/pages/home/widgets/sk_history_channels.dart';

class SKGroupChannelsWidget extends StatelessWidget {
  final bool canStart;
  final String title;

  const SKGroupChannelsWidget(
      {Key? key, required this.canStart, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        children: [
          Text(
            title,
            style: GoogleFonts.notoSans(
                textStyle: Get.textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black87)),
          ),
          const Spacer(),
          canStart
              ? const Icon(
                  Icons.add,
                  color: Colors.grey,
                )
              : Container()
        ],
      ),
      initiallyExpanded: true,
      children: channels(),
    );
  }

  List<Widget> channels() {
    return [
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
    ];
  }
}
