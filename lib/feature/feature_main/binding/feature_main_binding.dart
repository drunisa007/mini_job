import 'package:get/instance_manager.dart';
import 'package:mini_job/core/constants/size_config.dart';
import 'package:mini_job/feature/feature_main/controller/feature_main_controller.dart';

class FeatureMainBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FeatureMainController());
    Get.lazyPut(() => SizeConfig());
  }

}