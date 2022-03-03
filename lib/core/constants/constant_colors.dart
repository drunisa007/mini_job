import 'package:flutter/material.dart';
import 'package:mini_job/core/utils/concave_decoration.dart';

final kDarkShadow = Color.fromRGBO(216, 213, 208, 1);
final kDarkBackgroundColour = Color(0xff2b2e36);
final kDarkBackgroundShadowColour = Color(0xff111216);
final kOutline = Color(0xff454a56);


final kLightShadow = Color.fromRGBO(216, 213, 208, 1);
final kLightBackgroundColour = Color(0xffe0e0e0);
final kLightBackgroundShadowColour = Color(0xff5a5a5a);
final kLightOutline = Color(0xffffffff);

final kTextColor = Color(0xffFF2E63);

final List<Color> innerShadowColors = [kDarkBackgroundShadowColour, kOutline];

getConcaveDecoration(double radius, BuildContext context) {
  return ConcaveDecoration(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),

    ///have to change here
    colors: [
      Theme.of(context).colorScheme.secondary,
      Theme.of(context).colorScheme.secondaryVariant
    ],
    depression: 8,
  );
}

getConvexShadow(BuildContext context){
 return [
          BoxShadow(
              color: Theme.of(context).colorScheme.primary,
              offset: Offset(3.0, 3.0),
              blurRadius: 5),
          BoxShadow(
              color: Theme.of(context).colorScheme.primaryVariant,
              offset: Offset(-3.0, -3.0),
              blurRadius: 5),
        ];
}
