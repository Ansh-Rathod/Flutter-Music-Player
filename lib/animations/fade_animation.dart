import 'package:flutter/material.dart';

class SlideAnimation extends StatefulWidget {
  final Widget child;

  SlideAnimation(this.child);

  @override
  State<SlideAnimation> createState() => SlideAnimationState();
}

class SlideAnimationState extends State<SlideAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(microseconds: 2000),
  )..forward();

  late final Animation<Offset> _listAnimation =
      Tween<Offset>(begin: const Offset(0, 2), end: const Offset(0, 0)).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: const Interval(0.7, 1, curve: Curves.fastOutSlowIn),
    ),
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _listAnimation,
      child: widget.child,
    );
  }
}
