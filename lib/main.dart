import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/colors.dart';
import 'core/services/services.dart';
import 'core/localization/changelocal.dart';
import 'routes.dart';
import 'view/screens/language.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.lang,
      theme: ThemeData(
        fontFamily: "PlayFairDisplay",
        textTheme: const TextTheme(
          headlineLarge:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black
          ),
          bodyLarge: TextStyle(
              height: 2,
              color: AppColor.grey,
              fontWeight: FontWeight.bold,
              fontSize: 17
          ),
        )
      ),
      home: const Language(),
      routes: routes,
    );
  }
}

