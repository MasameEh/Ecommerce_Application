import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'core/constant/colors.dart';
import 'core/services/services.dart';
import 'core/localization/changelocal.dart';
import 'routes.dart';
import 'view/screens/language.dart';

void main() async {
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
          scaffoldBackgroundColor: Colors.white,
          checkboxTheme: const CheckboxThemeData(
              side: BorderSide(
            color: AppColor.grey,
          )),
          appBarTheme: const AppBarTheme().copyWith(
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              elevation: 0.0,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
              )
          ),
          unselectedWidgetColor: AppColor.grey,
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: AppColor.primaryColor,
              ),
          fontFamily: "PlayFairDisplay",
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
            headlineMedium: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black),
            bodyLarge: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14),
            bodyMedium:
                TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
          )),
      home: const Language(),
      routes: routes,
    );
  }
}
