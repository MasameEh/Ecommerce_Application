import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{

  Locale? lang;

  MyServices services = Get.find();

  changeLang(String langcode){
    Locale locale = Locale(langcode);
    services.sharedPref.setString('lang', langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    String? sharedPref = services.sharedPref.getString('lang');

    if(sharedPref == 'ar'){
      lang = const Locale('ar');
    }
    else if(sharedPref == 'en'){
      lang = const Locale('en');
    }
    else{
      lang = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}