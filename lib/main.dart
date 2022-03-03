import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_job/core/utils/main_controller.dart';
import 'package:mini_job/core/utils/styles.dart';
import 'package:mini_job/feature/feature_main/binding/feature_main_binding.dart';
import 'package:mini_job/feature/feature_main/view/feature_main_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    MainController _mainController  = Get.put(MainController());

    return
      AnimatedTheme(data:Styles.themeData(_mainController.darkTheme.value, context),
        child: Builder(builder:(context){
      return GetMaterialApp(
        title: 'Aung Thu',
        debugShowCheckedModeBanner: false,
        theme: Styles.themeData(_mainController.darkTheme.value, context),
        getPages: [
          GetPage(name: '/', page:()=> const FeatureMainPage(),binding: FeatureMainBinding())
        ],
        initialRoute: '/',
      );
    })
    
    );
  }
}



