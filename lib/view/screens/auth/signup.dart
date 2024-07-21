import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:ecommerce_app/view/widgets/logo_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../widgets/defaultextformfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
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
          const DefaultTextFormField(
            label: 'Email',
            hint: 'Enter your email',
            type: TextInputType.emailAddress,
            suffix: Icons.email_outlined,
          ),
          const SizedBox(height: 20),
          const DefaultTextFormField(
            label: 'Password',
            hint: 'Enter your password',
            type: TextInputType.text,
            suffix: Icons.visibility_outlined,
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
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
          DefaultButton(label: 'Sign In', onTap: () {

          },),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Don\'t have an account ?'),
              TextButton(
                  onPressed: () {

                  },
                  child: const Text('Register',
                      style: TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
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
