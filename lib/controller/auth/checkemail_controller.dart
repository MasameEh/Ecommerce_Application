import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController{
  void checkEmail();
  void gotoSuccessSignup();
}
class CheckEmailControllerImp extends CheckEmailController{

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
  void gotoSuccessSignup() {
    // TODO: implement gotoSignUp
    Get.offAllNamed('/success_signup');
  }


  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    super.dispose();
  }
}
