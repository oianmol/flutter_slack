import 'package:flutter/material.dart';

class SKOverlayManager {
  static final SKOverlayManager appLoader = SKOverlayManager();
  ValueNotifier<bool> loaderShowingNotifier = ValueNotifier(true);

  void showOverlay() {
    // show from anywhere
    loaderShowingNotifier.value = true;
  }

  void hideOverlay() {
    // using to hide from anywhere
    loaderShowingNotifier.value = false;
  }
}
