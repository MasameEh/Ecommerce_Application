import 'package:ecommerce_app/core/functions/handlingdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../data/datasource/auth/signup_data.dart';

abstract class SignupController extends GetxController{
  void signup();
  void changePasswordVisibility();
  void gotoVerifyCodeSignUp();
}
class SignupControllerImp extends SignupController{

  late TextEditingController emailController;
  late TextEditingController passController;
  late TextEditingController phoneController;
  late TextEditingController usernameController;

  StatusRequest? statusRequest;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isPass = true;
  bool isChecked = false;
  bool isError = false;
  IconData suffix = Icons.visibility_off_outlined;

  List data = [];
  SignupData signupData = SignupData(Get.find());

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
  void signup() async{
    // TODO: implement signup
    if(formKey.currentState!.validate()){
      statusRequest = StatusRequest.loading;
      var response = await signupData.postData(
          username: usernameController.text,
          email: emailController.text,
          pass: passController.text,
          phone: phoneController.text,
      );
      print("RESPONSE request is $response") ;
      statusRequest = handlingData(response);
      print("status request is $statusRequest") ;
      if(statusRequest == StatusRequest.success){
        print("status request is $statusRequest");
        if(response["status"] == "success"){
          print("status request is $statusRequest");
          //data.addAll(response['data']);
          gotoVerifyCodeSignUp();
        }
        else{
          Get.defaultDialog(title: 'Warning', middleText: "Phone or Email already used");
          statusRequest = StatusRequest.serverFailure;
        }
      }
      update();
    }else{
      print('A7a 3leek');
    }
  }

  @override
  gotoVerifyCodeSignUp(){
    Get.offAllNamed('/verifycodesignup');
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
