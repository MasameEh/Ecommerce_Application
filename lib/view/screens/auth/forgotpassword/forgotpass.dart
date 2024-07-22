import 'package:ecommerce_app/view/size_config.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:ecommerce_app/view/widgets/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgotpass_controller.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/image_asset.dart';
import '../../../widgets/defaultextformfield.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPassControllerImp controller = Get.put(ForgotPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Forgot Password',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.white,
            child: Image.asset(
              AppImageAsset.forgotPasslogo,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            "Mail Address Here",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Enter your email to receive a verification code to reset your password",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 30),
          DefaultTextFormField(
            label: 'Email',
            controller: controller.emailController,
            hint: 'Enter your email',
            type: TextInputType.emailAddress,
            suffix: Icons.email_outlined,
          ),
          const SizedBox(height: 30),
          DefaultButton(
            label: 'Check',
            onTap: () {
              controller.gotoVerifyCode();
            },
          ),
        ]),
      ),
    );
  }
}
