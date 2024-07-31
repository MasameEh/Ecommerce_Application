import 'package:ecommerce_app/core/class/handlingdataview.dart';
import 'package:ecommerce_app/view/size_config.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/forgotpassword/resetpass_controller.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/functions/validator.dart';
import '../../../widgets/defaultextformfield.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ResetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('48'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey),
        ),
      ),
      body: GetBuilder<ResetPassControllerImp>(
        builder: (controller) {
          return HandlingDataReq(statusRequest: controller.statusRequest, widget: Container(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight * 0.2, horizontal: 30),
            child: Form(
              key: controller.formKey,
              child: ListView(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        "35".tr,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const SizedBox(height: 30),
                    GetBuilder<ResetPassControllerImp>(
                      builder: (controller) => DefaultTextFormField(
                        label: '36'.tr,
                        controller: controller.passController,
                        validator: (value) {
                          return validInput(value!, 8, 20, "password");
                        },
                        hint: '14'.tr,
                        isPassword: controller.isPass,
                        type: TextInputType.text,
                        suffix: controller.suffix,
                        suffixPressed: controller.changePasswordVisibility,
                      ),
                    ),
                    const SizedBox(height: 20),
                    GetBuilder<ResetPassControllerImp>(
                      builder: (controller) => DefaultTextFormField(
                        label: '49'.tr,
                        controller: controller.passConfirmController,
                        validator: (value) {
                          return validInput(value!, 8, 20, "password");
                        },
                        hint: '50'.tr,
                        isPassword: controller.isPassConfirm,
                        type: TextInputType.text,
                        suffix: controller.suffixConfirm,
                        suffixPressed: controller.changePasswordConfirmVisibility,
                      ),
                    ),
                    const SizedBox(height: 30),
                    DefaultButton(
                      label: '51'.tr,
                      onTap: () {
                        controller.resetPass();
                      },
                    ),

                  ]),
            ),
          ));
        },
      ),
    );
  }
}
