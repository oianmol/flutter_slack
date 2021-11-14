import 'package:flutter/material.dart';

class SLCustomSlidingMenu extends StatelessWidget {
  final double sliderMenuOpenSize;
  final Widget sliderMenu;

  const SLCustomSlidingMenu(
      {Key? key,
        required this.sliderMenuOpenSize,
        required this.sliderMenu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: sliderMenuOpenSize,
      child: sliderMenu,
    );
    return container;
  }
}