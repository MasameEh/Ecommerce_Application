import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:ecommerce_app/view/widgets/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/colors.dart';
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
        title: Text('Sign Up',
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
            "Welcome Back",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Sign up with your email and password or continue with social media",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 30),
          DefaultTextFormField(
            label: 'Username',
            controller: controller.usernameController,
            hint: 'Enter your username',
            type: TextInputType.text,
            suffix: Icons.person_outline,
          ),
          const SizedBox(height: 20),
          DefaultTextFormField(
            label: 'Email',
            controller: controller.emailController,
            hint: 'Enter your email',
            type: TextInputType.emailAddress,
            suffix: Icons.email_outlined,
          ),
          const SizedBox(height: 20),
          DefaultTextFormField(
            label: 'Phone',
            controller: controller.phoneController,
            hint: 'Enter your phone number',
            type: TextInputType.phone,
            suffix: Icons.phone_outlined,
          ),
          const SizedBox(height: 20),
          GetBuilder<SignupControllerImp>(
            builder: (controller) => DefaultTextFormField(
              label: 'Password',
              controller: controller.passController,
              hint: 'Enter your password',
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
              Text('Remember me',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const SizedBox(height: 15),
          DefaultButton(label: 'Sign In', onTap: () {
            controller.signup();
          },),
        ]),
      ),
    );
  }
}
