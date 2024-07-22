import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  void login();
  void gotoSignUp();
  void gotoForgotPass();
  void changePasswordVisibility();
}
class LoginControllerImp extends LoginController{

  late TextEditingController emailController;
  late TextEditingController passController;

  bool isPass = true;
  bool isChecked = false;
  bool isError = false;
  IconData suffix = Icons.visibility_off_outlined;

  @override
  void onInit() {
    // TODO: implement onInit
    emailController = TextEditingController();
    passController = TextEditingController();

    super.onInit();
  }

  @override
  void changePasswordVisibility() {
    isPass = !isPass;
    suffix = isPass ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    update();
  }

  @override
  void login() {
    // TODO: implement login

  }
  @override
  void gotoSignUp() {
    // TODO: implement gotoSignUp
    Get.toNamed('/signup');
  }

  @override
  void gotoForgotPass() {
    // TODO: implement gotoForgotPass
    Get.toNamed('/forgotpass');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }


}
