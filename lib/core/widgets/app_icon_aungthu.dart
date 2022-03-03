import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_job/core/constants/template_data.dart';
import 'package:mini_job/core/utils/get_box_decoration.dart';
import 'package:neu/neu.dart';

class AppIconAungThu extends StatelessWidget {
  const AppIconAungThu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> mNames =dIconNames;
    return Row(
      children: mNames.map((name){
        return Container(
          width: 40,
          height: 40,
          margin: EdgeInsets.only(right: 6,left:name=="T"?16:0),
          decoration: getBoxDecorationCircle(context: context, swell: Swell.emboss, depth: 30, curvature: Curvature.superconcave),
          child: Center(
            child: Text(name,style: GoogleFonts.lato(
              textStyle: TextStyle(color: Theme.of(context).colorScheme.secondaryVariant,fontSize: 22)
            ),),
          ),
        );
      }).toList(),
    );
  }
}
