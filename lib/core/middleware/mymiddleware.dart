import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../services/services.dart';

class MyMiddleWare extends GetMiddleware{

  @override
  int get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route){
    if(myServices.sharedPref.getString('step') == "2"){
      return const RouteSettings(name: '/home');
    }

    if(myServices.sharedPref.getString('step') == "1"){
      return const RouteSettings(name: '/login');
    }
  }
}