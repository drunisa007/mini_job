import 'package:flutter/material.dart';
import 'package:neu/neu.dart';

getTextStyleForNeo({context,fontSize,swell,depth}){
 return  Neu.textStyle(
    baseStyle:TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold,letterSpacing: 6),
    color: Theme.of(context).scaffoldBackgroundColor,
    depth: depth,
    curvature: Curvature.superconcave,
    swell: swell,
    spread: 1,
  );
}