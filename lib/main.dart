import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/res/getx_loclization/languages.dart';
import 'package:getxmvvm/res/routes/route.dart';
import 'package:getxmvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
     
      getPages: AppRoutes.appRoutes(),
    );
  }
}
