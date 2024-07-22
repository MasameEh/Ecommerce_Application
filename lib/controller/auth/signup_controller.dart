import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController{
  void signup();
  void changePasswordVisibility();
  void gotoCheckEmail();
}
class SignupControllerImp extends SignupController{

  late TextEditingController emailController;
  late TextEditingController passController;
  late TextEditingController phoneController;
  late TextEditingController usernameController;

  bool isPass = true;
  bool isChecked = false;
  bool isError = false;
  IconData suffix = Icons.visibility_off_outlined;

  @override
  void onInit() {
    // TODO: implement onInit
    emailController = TextEditingController();
    passController = TextEditingController();
    phoneController = TextEditingController();
    usernameController = TextEditingController();
    super.onInit();
  }

  @override
  void changePasswordVisibility() {
    isPass = !isPass;
    suffix = isPass ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    update();
  }

  @override
  void signup() {
    // TODO: implement signup
    gotoCheckEmail();

  }

  @override
  gotoCheckEmail(){
    Get.offNamed('/checkemail');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passController.dispose();
    usernameController.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
