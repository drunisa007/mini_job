import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mini_job/core/utils/get_text_style.dart';
import 'package:neu/neu.dart';

buildAnimatedTextWithTitle(
    {required BuildContext context, required String title}) {
  return TypewriterAnimatedText(
    title,
    textStyle:getTextStyleForNeo(
        context: context,
        fontSize: 40,
        swell: Swell.superemboss,
        depth: 20),
    speed: const Duration(milliseconds: 100),
  );
}
