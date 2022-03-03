import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mini_job/core/utils/styles.dart';

class MainController extends GetxController{
  RxBool darkTheme = false.obs;


  changeTheme(BuildContext context){
    darkTheme.toggle();
    Get.changeTheme(Styles.themeData(darkTheme.value, context));
  }


}