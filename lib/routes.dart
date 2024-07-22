import 'package:ecommerce_app/view/screens/auth/checkemail.dart';
import 'package:ecommerce_app/view/screens/auth/forgotpassword/forgotpass.dart';
import 'package:ecommerce_app/view/screens/auth/login.dart';
import 'package:ecommerce_app/view/screens/auth/forgotpassword/resetpass.dart';
import 'package:ecommerce_app/view/screens/auth/signup.dart';
import 'package:ecommerce_app/view/screens/auth/forgotpassword/success_reset.dart';
import 'package:ecommerce_app/view/screens/auth/forgotpassword/verifycode.dart';
import 'package:ecommerce_app/view/screens/auth/success_signup.dart';
import 'package:ecommerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';


Map<String, Widget Function(BuildContext)> routes = {
  '/login' : (context) => const Login(),
  '/onboarding' : (context) => const OnBoarding(),
  '/signup' : (context) => const Signup(),
  '/forgotpass' : (context) => const ForgotPass(),
  '/resetpass' : (context) => const ResetPass(),
  '/verifycode' : (context) => const VerifyCode(),
  '/successreset' : (context) => const SuccessReset(),
  '/success_signup' : (context) => const SuccessSignup(),
  '/checkemail' : (context) => const CheckEmail(),
};