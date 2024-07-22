import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  void checkCode();
  void gotoResetPass();
}
class VerifyCodeControllerImp extends VerifyCodeController{


  @override
  void checkCode() {
    // TODO: implement login

  }
  @override
  void gotoResetPass() {
    // TODO: implement gotoSignUp
    Get.offNamed('/resetpass');
  }

}
