import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:ecommerce_app/view/widgets/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/colors.dart';
import '../../../core/functions/validator.dart';
import '../../widgets/defaultextformfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImp controller = Get.put(SignupControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('18'.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formKey,
          child: ListView(children: [
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
                "25".tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 30),
            DefaultTextFormField(
              label: '21'.tr,
              controller: controller.usernameController,
              validator: (value) {
                return validInput(value!, 8, 15, "username");
              },
              hint: '24'.tr,
              type: TextInputType.text,
              suffix: Icons.person_outline,
            ),
            const SizedBox(height: 20),
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
            DefaultTextFormField(
              label: '22'.tr,
              controller: controller.phoneController,
              validator: (value) {
                return validInput(value!, 11, 12, "phone");
              },
              hint: '23'.tr,
              type: TextInputType.phone,
              suffix: Icons.phone_outlined,
            ),
            const SizedBox(height: 20),
            GetBuilder<SignupControllerImp>(
              builder: (controller) => DefaultTextFormField(
                label: '20'.tr,
                controller: controller.passController,
                validator: (value) {
                  return validInput(value!, 8, 20, "password");
                },
                onSubmit: (value) {
                  controller.signup();
                },
                hint: '14'.tr,
                isPassword: controller.isPass,
                type: TextInputType.text,
                suffix: controller.suffix,
                suffixPressed: controller.changePasswordVisibility,
              ),
            ),
            const SizedBox(height: 5),
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
              ],
            ),
            const SizedBox(height: 15),
            DefaultButton(label: '18'.tr, onTap: () {
              controller.signup();
            },),
          ]),
        ),
      ),
    );
  }
}
