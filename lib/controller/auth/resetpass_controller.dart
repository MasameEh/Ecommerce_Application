import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassController extends GetxController{
  void resetPass();
  void gotoSuccess();
  void changePasswordVisibility();
  void changePasswordConfirmVisibility();
}
class ResetPassControllerImp extends ResetPassController{

  late TextEditingController passController;
  late TextEditingController passConfirmController;
  IconData suffix = Icons.visibility_off_outlined;
  IconData suffixConfirm = Icons.visibility_off_outlined;

  bool isPass = true;
  bool isPassConfirm = true;
  @override
  void onInit() {
    // TODO: implement onInit
    passController = TextEditingController();
    passConfirmController = TextEditingController();

    super.onInit();
  }


  @override
  void resetPass() {
    // TODO: implement login

  }
  @override
  void gotoSuccess() {
    // TODO: implement gotoSignUp
    Get.offAllNamed('/successreset');
  }

  @override
  void changePasswordVisibility() {
    isPass = !isPass;
    suffix = isPass ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    update();
  }

  @override
  void changePasswordConfirmVisibility() {
    isPassConfirm = !isPassConfirm;
    suffixConfirm = isPassConfirm ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    update();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    passConfirmController.dispose();
    passController.dispose();

    super.dispose();
  }
}
