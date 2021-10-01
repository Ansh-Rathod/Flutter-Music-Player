import 'dart:ui';

import 'package:flutter/material.dart';

class BlurryContainer extends StatelessWidget {
  final Widget child;
  final double blur;

  final Color bgColor;

  //final double colorOpacity;

  BlurryContainer({
    Key? key,
    required this.child,
    required this.blur,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          color: bgColor == Colors.transparent
              ? bgColor
              : bgColor.withOpacity(0.5),
          child: child,
        ),
      ),
    );
  }
}
