import 'package:ecommerce_app/view/size_config.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpass_controller.dart';
import '../../../../core/constant/colors.dart';
import '../../../widgets/defaultextformfield.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPassControllerImp controller = Get.put(ResetPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: SizeConfig.screenHeight * 0.2, horizontal: 30),
          child: ListView(
              children: [
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Enter your new password",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 30),
            GetBuilder<ResetPassControllerImp>(
              builder: (controller) => DefaultTextFormField(
                label: 'New Password',
                controller: controller.passController,
                hint: 'Enter your password',
                isPassword: controller.isPass,
                type: TextInputType.text,
                suffix: controller.suffix,
                suffixPressed: controller.changePasswordVisibility,
              ),
            ),
            const SizedBox(height: 20),
            GetBuilder<ResetPassControllerImp>(
              builder: (controller) => DefaultTextFormField(
                label: 'Confirm Password',
                controller: controller.passConfirmController,
                hint: 'Re enter your password',
                isPassword: controller.isPassConfirm,
                type: TextInputType.text,
                suffix: controller.suffixConfirm,
                suffixPressed: controller.changePasswordConfirmVisibility,
              ),
            ),
            const SizedBox(height: 30),
                DefaultButton(
                  label: 'Update Passwords',
                  onTap: () {
                    controller.gotoSuccess();
                  },
                ),

          ]),
        ),
    );
  }
}
