import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_job/core/constants/size_config.dart';
import 'package:mini_job/core/utils/main_controller.dart';
import 'package:mini_job/core/utils/neu_convex_design.dart';
import 'package:mini_job/feature/home_main/controller/home_controller.dart';
import 'package:mini_job/feature/home_main/view/build_home_detail_text.dart';
import 'package:mini_job/feature/home_main/view/build_profile_with_circle_image.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController _mainController = Get.find<MainController>();

    HomeController _homeController = Get.put(HomeController());

    SizeConfig mSizeConfig = Get.find<SizeConfig>();
    mSizeConfig.init(context);

    return Container(
      margin: EdgeInsets.only(left: 10, right: 20, top: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: mSizeConfig.blockSizeHorizontal * 5,
          ),
          buildHomeDetailText(context, _mainController, _homeController),
          SizedBox(
            width: mSizeConfig.blockSizeHorizontal * 5,
          ),
          GetBuilder<HomeController>(
            init: _homeController,
            builder: (controller) {
              return BuildProfileWithCircleImage(
                  width: 300,
                  height: 300,
                  radius: 300/2,
                  mHomeController: _homeController,
                  child: Center(
                    child: NeuConvexDesign(width: 300-70, radius: 300-70/2, height: 300-70, child: Center(
                      child: ClipRRect(borderRadius:BorderRadius.circular(300-100/2),child: Image.asset("assets/image/profile.jpg",width: 300-100,height: 300-100,fit: BoxFit.cover,)),
                    ),
                    ),
                  ) );
            },
            id: "profileanimation",
          ),
        ],
      ),
    );
  }
}
