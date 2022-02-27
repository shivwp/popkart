import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Color backgroundColor;
  final Widget? child;
  final double? height;
  final double? width;
  final double radius;
  final Gradient? gradient;
  final Alignment childAlignment;
  final EdgeInsets padding;

  RoundedContainer(
      {this.backgroundColor = Colors.white,
      this.padding = EdgeInsets.zero,
      this.child,
      this.childAlignment = Alignment.center,
      this.radius = 8.0,
      this.height,
      this.width,
      this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: childAlignment,
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          gradient: gradient,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
