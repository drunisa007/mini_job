import 'package:flutter/material.dart';
import 'package:neu/neu.dart';

getBoxDecorationCircle({required context,required swell,required depth,required curvature}){
  final BoxDecoration neuDecoration = Neu.boxDecoration(
    color: Theme.of(context).scaffoldBackgroundColor,
    depth: depth,
    curvature: curvature,
    swell: swell,
    spread: 0.5,
    shape: BoxShape.circle,

  );
  return  neuDecoration;
}

getBoxDecorationRect({required context,required swell,required depth,required curvature}){
  final BoxDecoration neuDecoration = Neu.boxDecoration(
    color: Theme.of(context).scaffoldBackgroundColor,
    depth: depth,

    curvature: curvature,
    swell: swell,
    spread: 0.5,
    shape: BoxShape.rectangle,

  );
  return  neuDecoration;
}