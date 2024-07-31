import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/functions/handlingdata.dart';
import '../../data/datasource/forgotpass/checkemail_data.dart';

abstract class ForgotPassController extends GetxController{
  void checkEmail();
  void gotoVerifyCode();
}
class ForgotPassControllerImp extends ForgotPassController{

  late TextEditingController emailController;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  CheckemailData checkemailData = CheckemailData(Get.find());

  @override
  void onInit() {
    // TODO: implement onInit
    emailController = TextEditingController();

    super.onInit();
  }


  @override
  void checkEmail() async{
    // TODO: implement checkEmail
    if(formKey.currentState!.validate()){
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkemailData.postData(
        email: emailController.text,
      );
      statusRequest = handlingData(response);
      if(statusRequest == StatusRequest.success){
        if(response["status"] == "success"){
          gotoVerifyCode();
        }
        else{
          Get.defaultDialog(title: 'Warning', middleText: "Email does not exist");
          statusRequest = StatusRequest.serverFailure;
        }
      }
      update();
    }else {
      print('A7a 3leek');
    }
  }
  @override
  void gotoVerifyCode() {
    // TODO: implement gotoSignUp
    Get.offAllNamed('/verifycode', arguments: {
      "email" : emailController.text,
    });
  }


  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    super.dispose();
  }
}
