import 'package:ecommerce_app/core/services/services.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController{
  initDate();
}

class HomeControllerImpl extends HomeController{

  MyServices services = Get.find();
  String? username;
  @override
  initDate(){
    username = services.sharedPref.getString("username");
  }

  @override
  void onInit() {
    // TODO: implement onInit
    initDate();
    super.onInit();
  }
}