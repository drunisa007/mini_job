import 'package:flutter/material.dart';
import 'package:mini_job/core/constants/constant_colors.dart';
import 'package:mini_job/core/utils/concave_decoration.dart';

class NeuConcaveDesign extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Widget child;
  const NeuConcaveDesign({Key? key, required this.width, required this.height,required this.radius,required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: getConcaveDecoration(radius,context),
      child: child,
    );
  }
}
