import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mini_job/core/utils/get_box_decoration.dart';
import 'package:mini_job/core/utils/get_text_style.dart';
import 'package:mini_job/core/utils/main_controller.dart';
import 'package:mini_job/core/utils/neu_concave_design.dart';
import 'package:mini_job/core/utils/neu_convex_design.dart';
import 'package:mini_job/feature/home_main/controller/home_controller.dart';
import 'package:mini_job/feature/home_main/view/build_animated_text_with_title.dart';
import 'package:neu/neu.dart';
import 'package:simple_animations/simple_animations.dart';

Widget buildHomeDetailText(
    context, MainController mainController, HomeController homeController) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('HELLO ,',
          style: getTextStyleForNeo(
              context: context,
              fontSize: 70,
              swell: Swell.superemboss,
              depth: 20)),
      Row(
        children: [
          Text("I'M AUNG THU",
              style: getTextStyleForNeo(
                  context: context,
                  fontSize: 70,
                  swell: Swell.superemboss,
                  depth: 20)),
          Image.asset(
            mainController.darkTheme.value
                ? "assets/gif/glasses_black.gif"
                : "assets/gif/glasses_white.gif",
            width: 100,
            height: 100,
          )
        ],
      ),
      Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: getBoxDecorationCircle(
              context: context,
              swell: Swell.superemboss,
              depth: 20,
              curvature: Curvature.concave,
            ),
            child: Center(
              child: Icon(
                CupertinoIcons.arrowtriangle_right_fill,
                size: 18,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          AnimatedTextKit(
            animatedTexts: [
              buildAnimatedTextWithTitle(
                  context: context, title: "MOBILE DEVELOPER"),
              buildAnimatedTextWithTitle(
                  context: context, title: "FLUTTER DEVELOPER"),
              buildAnimatedTextWithTitle(
                  context: context, title: "ANDROID DEVELOPER"),
              buildAnimatedTextWithTitle(
                  context: context, title: "IOS DEVELOPER"),
              buildAnimatedTextWithTitle(
                  context: context, title: "BACKEND DEVELOPER"),
              buildAnimatedTextWithTitle(
                  context: context, title: "NODEJS DEVELOPER"),
            ],
            totalRepeatCount: 50,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          )
        ],
      ),
      SizedBox(
        height: 20,
      ),
      NeuConcaveDesign(
        width: 200,
        height: 60,
        radius: 8,
        child: Center(
            child: Text(
          "Click Me",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        )),
      ),
      SizedBox(
        height: 20,
      ),
      NeuConvexDesign(
        width: 200,
        height: 50,
        radius: 5,
        child: Center(
            child: Text(
          "Click Me",
          style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
        )),
      )
    ],
  );
}
