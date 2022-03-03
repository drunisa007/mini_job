import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';


class FeatureMainController extends GetxController{

  ///working for show appbar background or not
  RxBool showAppbar = false.obs;
  changeAppBarVisibility(bool value){

    if(value!=showAppbar.value){
      showAppbar.value = value;
    }

  }

 /// working for appbar position
  RxInt appbarPosition = 0.obs;

  changeAppbarPosition(int value){
    appbarPosition.value = value;
  }

}