import 'package:ecommerce_app/controller/auth/login_controller.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:ecommerce_app/view/widgets/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/colors.dart';
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
        title: Text('Sign In',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const LogoAuth(),
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
              "Sign in with your email and password or continue with social media",
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
          const SizedBox(height: 20),
          GetBuilder<LoginControllerImp>(
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          controller.gotoForgotPass();
                        },
                        child: Text('Forgot password?',
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
          DefaultButton(label: 'Sign In', onTap: () {},),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account ?'),
              TextButton(
                  onPressed: () {
                    controller.gotoSignUp();
                  },
                  child: const Text('Sign up',
                      style: TextStyle(
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
    );
  }
}
