import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/image_asset.dart';
import '../../../controller/auth/checkemail_controller.dart';
import '../../widgets/defaultextformfield.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Verify Account',
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
            "Success Sign Up",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Enter your email to receive a verification code to verify",
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
              controller.gotoSuccessSignup();
            },
          ),
        ]),
      ),
    );
  }
}
