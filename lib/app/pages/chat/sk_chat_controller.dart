import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/animation.dart';

class SKChatController extends GetxController {
  FocusNode? _messageFieldFocus;

  bool showMessageOptions = false;
  bool isExpanded = false;

  FocusNode messageFieldFocus() {
    return _messageFieldFocus!;
  }

  @override
  void onInit() {
    super.onInit();
    _messageFieldFocus = FocusNode();

  }

  @override
  void onReady() {
    super.onReady();
    _messageFieldFocus?.addListener(() {
      showMessageOptions = _messageFieldFocus?.hasFocus == true;
      update();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _messageFieldFocus?.dispose();
  }

  void expandCollapse() {
    isExpanded = !isExpanded;
    update();
  }

}
