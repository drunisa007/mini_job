import 'package:flutter/material.dart';
import 'package:mini_job/core/utils/neu_concave_design.dart';
import 'package:mini_job/feature/home_main/controller/home_controller.dart';

class BuildProfileWithCircleImage extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final HomeController mHomeController;
  final  Widget child;

  BuildProfileWithCircleImage(
      {Key? key,
      required this.width,
      required this.height,
      required this.radius,
      required this.mHomeController,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeuConcaveDesign(width: width, height: height, radius: radius, child: child);
  }
}
