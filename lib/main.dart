import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_roadmap/MVVM/res/routes/routes.dart';
import 'package:getx_roadmap/MVVM/view/splash_screen.dart';
import 'package:getx_roadmap/uitls/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: Languages(),

      home:  SplashScreen(),
getPages: AppRoutes.appRoutes(),
    );
  }
}

