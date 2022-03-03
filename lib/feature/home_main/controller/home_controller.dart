import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:simple_animations/simple_animations.dart';

class HomeController extends GetxController{

  var animationController = CustomAnimationControl.play;
  var homeTitleAnimationController = CustomAnimationControl.play;

  @override
  void onInit() {
     super.onInit();
  }

  playProfileAnimation(){
    animationController = animationController == CustomAnimationControl.play
        ? CustomAnimationControl.playReverse
        : CustomAnimationControl.play;
    update(['profileanimation']);
  }
}