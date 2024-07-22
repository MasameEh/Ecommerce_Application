import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPassController extends GetxController{
  void checkEmail();
  void gotoVerifyCode();
}
class ForgotPassControllerImp extends ForgotPassController{

  late TextEditingController emailController;


  @override
  void onInit() {
    // TODO: implement onInit
    emailController = TextEditingController();

    super.onInit();
  }


  @override
  void checkEmail() {
    // TODO: implement login

  }
  @override
  void gotoVerifyCode() {
    // TODO: implement gotoSignUp
    Get.offAllNamed('/verifycode');
  }


  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    super.dispose();
  }
}
