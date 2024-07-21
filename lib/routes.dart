import 'package:ecommerce_app/view/screens/auth/login.dart';
import 'package:ecommerce_app/view/screens/auth/signup.dart';
import 'package:ecommerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';


Map<String, Widget Function(BuildContext)> routes = {
  '/login' : (context) => const Login(),
  '/onboarding' : (context) => const OnBoarding(),
  '/signup' : (context) => const Signup(),
};