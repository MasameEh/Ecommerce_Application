import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/functions/handlingdata.dart';
import '../../data/datasource/forgotpass/resetpass_data.dart';

abstract class ResetPassController extends GetxController{
  void resetPass();
  void gotoSuccess();
  void changePasswordVisibility();
  void changePasswordConfirmVisibility();
}
class ResetPassControllerImp extends ResetPassController{

  late TextEditingController passController;
  late TextEditingController passConfirmController;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  ResetPassData resetPassData = ResetPassData(Get.find());

  IconData suffix = Icons.visibility_off_outlined;
  IconData suffixConfirm = Icons.visibility_off_outlined;

  bool isPass = true;
  bool isPassConfirm = true;

  String? email;


  @override
  void onInit() {
    // TODO: implement onInit
    passController = TextEditingController();
    passConfirmController = TextEditingController();

    email = Get.arguments["email"];

    super.onInit();
  }


  @override
  void resetPass() async{
    // TODO: implement resetPass
    if(passController.text != passConfirmController.text){
      return Get.defaultDialog(title: 'Warning', middleText: "Passwords do not match");
    } else{
      if(formKey.currentState!.validate()){
        statusRequest = StatusRequest.loading;
        update();
        var response = await resetPassData.postData(
          email: email!,
          pass: passController.text,
        );
        print("RESPONSE request is $response");
        statusRequest = handlingData(response);
        if(statusRequest == StatusRequest.success){
          if(response["status"] == "success"){
            //data.addAll(response['data']);
            gotoSuccess();
          }
          else{
            Get.defaultDialog(title: 'Warning', middleText: "Try Again");
            statusRequest = StatusRequest.serverFailure;
          }
        }
        update();
      }else {
        print('A7a 3leek');
      }
    }

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
