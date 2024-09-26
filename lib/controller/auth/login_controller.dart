import 'package:ecommerce_app/data/datasource/auth/login_data.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/functions/handlingdata.dart';

abstract class LoginController extends GetxController{
  void login();
  void gotoSignUp();
  void gotoForgotPass();
  void gotoHomePage();
  void changePasswordVisibility();
}
class LoginControllerImp extends LoginController{

  late TextEditingController emailController;
  late TextEditingController passController;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  LoginData loginData = LoginData(Get.find());

  bool isPass = true;
  bool isChecked = false;
  bool isError = false;
  IconData suffix = Icons.visibility_off_outlined;

  @override
  void onInit() {
    // TODO: implement onInit
    emailController = TextEditingController();
    passController = TextEditingController();
    FirebaseMessaging.instance.getToken().then((value){
      print(value);
      String? token = value;
    });
    super.onInit();
  }

  @override
  void changePasswordVisibility() {
    isPass = !isPass;
    suffix = isPass ? Icons.visibility_off_outlined : Icons.visibility_outlined;
    update();
  }

  @override
  void login() async{
    // TODO: implement login
    if(formKey.currentState!.validate()){
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(
          email: emailController.text,
          pass: passController.text,
      );
      print("RESPONSE request is $response");
      statusRequest = handlingData(response);
      if(statusRequest == StatusRequest.success){
        if(response["status"] == "success"){
          //data.addAll(response['data']);
          gotoHomePage();
        }
        else{
          Get.defaultDialog(title: 'Warning', middleText: "Phone or Email is not correct");
          statusRequest = StatusRequest.serverFailure;
        }
      }
      update();
    }else {
      print('A7a 3leek');
    }
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
  void gotoHomePage(){
    Get.offNamed('home');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passController.dispose();

    super.dispose();
  }


}
