import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class RoundedContainer extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  final Alignment childAlignment;

  RoundedContainer({
    this.backgroundColor = Colors.white,
    required this.child,
    this.childAlignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: childAlignment,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              PopKartAppColor.lightBlue,
              PopKartAppColor.lightBlue,
              PopKartAppColor.lightBlue,
              PopKartAppColor.darkMaxBlue.withOpacity(0.99),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.3, 0.6, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: child,
    );
  }
}
