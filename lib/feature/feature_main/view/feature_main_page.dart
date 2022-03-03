import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mini_job/core/constants/size_config.dart';
import 'package:mini_job/core/widgets/main_appbar.dart';
import 'package:mini_job/feature/feature_main/controller/feature_main_controller.dart';
import 'package:mini_job/feature/home_main/view/home.dart';

class FeatureMainPage extends StatelessWidget {
  const FeatureMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig mSizeConfig = Get.find<SizeConfig>();
    mSizeConfig.init(context);

    FeatureMainController mFeatureController =
        Get.find<FeatureMainController>();

    return Scaffold(
        appBar: MainAppBar(
          mFeatureController: mFeatureController,
        ),
        body: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            if (notification.metrics.pixels > 250) {
              mFeatureController.changeAppBarVisibility(true);
            } else if (notification.metrics.pixels < 250) {
              mFeatureController.changeAppBarVisibility(false);
            }
            return true;
          },
          child: ListView(
            children: [
              SizedBox(
                height: 2,
              ),
              Home(),
              // ListView.builder(
              //     itemCount: 100,
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) => ListTile(
              //           title: Text("Item $index"),
              //         )),
            ],
          ),
        ));
  }
}
