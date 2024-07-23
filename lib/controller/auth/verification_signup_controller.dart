import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignUpController extends GetxController{
  void checkCode();
  void gotoSuccessSignup();
}
class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController{


  @override
  void checkCode() {
    // TODO: implement login

  }

  @override
  void gotoSuccessSignup() {
    // TODO: implement gotoSignUp
    Get.offAllNamed('/success_signup');
  }

}
