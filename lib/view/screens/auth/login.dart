import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/core/class/handlingdataview.dart';
import 'package:ecommerce_app/core/functions/validator.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:ecommerce_app/view/widgets/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
import '../../../core/functions/exitalert.dart';
import '../../widgets/defaultextformfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('10'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          alertExitApp();
        },
        child: GetBuilder<LoginControllerImp>(
          builder: (controller) {
            return  HandlingDataView(statusRequest: controller.statusRequest, widget: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              child: Form(
                key: controller.formKey,
                child: ListView(children: [
                  const LogoAuth(),
                  const SizedBox(height: 20),
                  Text(
                    "11".tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "12".tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const SizedBox(height: 30),
                  DefaultTextFormField(
                    label: '19'.tr,
                    controller: controller.emailController,
                    validator: (value) {
                      return validInput(value!, 8, 40, "email");
                    },
                    hint: '13'.tr,
                    type: TextInputType.emailAddress,
                    suffix: Icons.email_outlined,
                  ),
                  const SizedBox(height: 20),
                  GetBuilder<LoginControllerImp>(
                    builder: (controller) => DefaultTextFormField(
                      label: '20'.tr,
                      controller: controller.passController,
                      validator: (value) {
                        return validInput(value!, 8, 20, "password");
                      },
                      onSubmit: (value) {
                        controller.login();
                      },
                      hint: '14'.tr,
                      isPassword: controller.isPass,
                      type: TextInputType.text,
                      suffix: controller.suffix,
                      suffixPressed: controller.changePasswordVisibility,
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(
                        value: false,
                        activeColor: AppColor.primaryColor,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: const VisualDensity(horizontal: -4, vertical: -2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3),
                        ),
                        onChanged: (bool? value) {
                          // setState(() {
                          //   isChecked = value!;
                          // });
                        },
                      ),
                      const SizedBox(width: 5),
                      Text('43'.tr,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  controller.gotoForgotPass();
                                },
                                child: Text('15'.tr,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  //textAlign: TextAlign.end,
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  DefaultButton(label: '10'.tr, onTap: () {
                    controller.login();
                  },),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('17'.tr),
                      TextButton(
                          onPressed: () {
                            controller.gotoSignUp();
                          },
                          child: Text('18'.tr,
                              style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              )
                          )
                      ),
                    ],
                  ),
                ]),
              ),
            ));
          },
        ),
      ),
    );
  }
}
