import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../../controller/forgotpassword/verifycode_controller.dart';
import '../../../../core/constant/colors.dart';


class VerifyCode extends StatelessWidget {
  const VerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller = Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('45'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          child: ListView(children: [
            const SizedBox(height: 20),
            Text(
              "46".tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "47".tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 30),
            OtpTextField(
              numberOfFields: 5,
              focusedBorderColor: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(50),
              textStyle: const TextStyle(fontSize: 25),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                controller.gotoResetPass();
              }, // end onSubmit
            ),
              ],
            ),
        ),
    );
  }
}
