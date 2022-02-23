import 'package:flutter/material.dart';
import 'package:popkart/core/constants/app_colors.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              PopKartAppColor.lightBlue,
              PopKartAppColor.lightBlue,
              PopKartAppColor.lightBlue,
              PopKartAppColor.darkMaxBlue,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.3, 0.6, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Container(),
    );
  }
}
