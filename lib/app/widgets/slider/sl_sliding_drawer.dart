import 'package:flutter/material.dart';
import 'package:slack_app/app/widgets/slider/sl_sliding_menu.dart';

class SLCustomSlidingWidget extends StatefulWidget {
  final Widget menu;
  final Widget content;
  final double menuSize;

  final int animationDuration;

  const SLCustomSlidingWidget(
      {Key? key,
      required this.menu,
      required this.content,
      required this.menuSize,
      required this.animationDuration})
      : super(key: key);

  @override
  SLCustomSlidingWidgetState createState() => SLCustomSlidingWidgetState();
}

class SLCustomSlidingWidgetState extends State<SLCustomSlidingWidget>
    with TickerProviderStateMixin {
  late AnimationController _animationDrawerController;
  late Animation<double> animation;
  double slideAmount = 0.0;
  double _percent = 0.0;
  bool dragging = false;
  var canDrag = true;
  static const double WIDTH_GESTURE = 50.0;

  @override
  void initState() {
    super.initState();
    _animationDrawerController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: widget.animationDuration));

    animation = Tween<double>(begin: 0, end: widget.menuSize).animate(
        CurvedAnimation(
            parent: _animationDrawerController,
            curve: Curves.easeIn,
            reverseCurve: Curves.easeOut));
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      return Stack(children: <Widget>[
        /// Display Menu
        SLCustomSlidingMenu(
          sliderMenu: widget.menu,
          sliderMenuOpenSize: widget.menuSize,
        ),

        /// Display Main Screen
        AnimatedBuilder(
          animation: _animationDrawerController,
          builder: (_, child) {
            return Transform.translate(
              offset: getOffsetValues(animation.value),
              child: Stack(
                children: [
                  child!,
                  if (animation.value > 0) ...[
                    GestureDetector(
                      onTap: () {
                        closeDrawer();
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 100),
                        color: Colors.transparent,
                      ),
                    )
                  ]
                ],
              ),
            );
          },
          child: GestureDetector(
            behavior: HitTestBehavior.deferToChild,
            onHorizontalDragStart: _onHorizontalDragStart,
            onHorizontalDragEnd: _onHorizontalDragEnd,
            onHorizontalDragUpdate: (detail) =>
                _onHorizontalDragUpdate(detail, constrain),
            child: widget.content,
          ),
        ),
      ]);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationDrawerController.dispose();
  }

  void _onHorizontalDragStart(DragStartDetails detail) {
    if (!canDrag) {
      return;
    }
    if (detail.localPosition.dx <= WIDTH_GESTURE) {
      setState(() {
        dragging = true;
      });
    }
  }

  void _onHorizontalDragEnd(DragEndDetails detail) {
    if (!canDrag) {
      return;
    }
    if (dragging) {
      openOrClose();
      setState(() {
        dragging = false;
      });
    } else {
      openOrClose();
    }
  }

  void _onHorizontalDragUpdate(
    DragUpdateDetails detail,
    BoxConstraints constraints,
  ) {
    if (!canDrag) {
      return;
    }
    // open drawer for left/right type drawer
    var globalPosition = detail.globalPosition.dx;
    globalPosition = globalPosition < 0 ? 0 : globalPosition;
    double position = globalPosition / constraints.maxWidth;
    move(position);

    // close drawer for left/right type drawer
    if (isDrawerOpen && detail.delta.dx < 15) {
      closeDrawer();
    }
  }

  move(double percent) {
    _percent = percent;
    _animationDrawerController.value = percent;
    _animationDrawerController.notifyListeners();
  }

  openOrClose() {
    if (_percent > 0.6) {
      openDrawer();
    } else {
      closeDrawer();
    }
  }

  /// check whether drawer is open
  bool get isDrawerOpen => _animationDrawerController.isCompleted;

  /// it's provide [animationController] for handle and lister drawer animation
  AnimationController? get animationController => _animationDrawerController;

  /// Toggle drawer
  void toggle() => _animationDrawerController.isCompleted
      ? _animationDrawerController.reverse()
      : _animationDrawerController.forward();

  /// Open drawer
  void openDrawer() => _animationDrawerController.forward();

  /// Close drawer
  void closeDrawer() => _animationDrawerController.reverse();

  static Offset getOffsetValues(double value) {
    return Offset(value, 0);
  }

  void disableSwipe() {
    setState(() {
      canDrag = false;
    });
  }

  void enableSwipe() {
    setState(() {
      canDrag = true;
    });
  }
}
