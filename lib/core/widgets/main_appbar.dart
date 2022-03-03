import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_job/feature/feature_main/controller/feature_main_controller.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget{

   FeatureMainController mFeatureController;
   MainAppBar({Key? key,required this.mFeatureController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return  AppBar(
         toolbarHeight: kToolbarHeight,
        elevation: mFeatureController.showAppbar.value?2:0,
        flexibleSpace: Container(
          color: mFeatureController.showAppbar.value?Theme.of(context).colorScheme.primaryVariant:Colors.transparent,
          child: Row(
            children: [

            ],
          ),
        ),
      );
    });
  }

  @override

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
