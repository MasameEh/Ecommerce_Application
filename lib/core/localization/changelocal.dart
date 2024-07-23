import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/theme.dart';

class LocaleController extends GetxController{

  Locale? lang;

  MyServices services = Get.find();
  ThemeData appTheme = themeEnglish;

  changeLang(String langcode){
    Locale locale = Locale(langcode);
    services.sharedPref.setString('lang', langcode);
    appTheme = langcode == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    String? sharedPref = services.sharedPref.getString('lang');

    if(sharedPref == 'ar'){
      lang = const Locale('ar');
      appTheme = themeArabic;
    }
    else if(sharedPref == 'en'){
      lang = const Locale('en');
      appTheme = themeEnglish;
    }
    else{
      lang = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}