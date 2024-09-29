import 'package:ecommerce_app/view/screens/auth/forgotpassword/forgotpass.dart';
import 'package:ecommerce_app/view/screens/home.dart';
import 'package:ecommerce_app/view/screens/auth/login.dart';
import 'package:ecommerce_app/view/screens/auth/forgotpassword/resetpass.dart';
import 'package:ecommerce_app/view/screens/auth/signup.dart';
import 'package:ecommerce_app/view/screens/auth/forgotpassword/success_reset.dart';
import 'package:ecommerce_app/view/screens/auth/forgotpassword/verifycode.dart';
import 'package:ecommerce_app/view/screens/auth/success_signup.dart';
import 'package:ecommerce_app/view/screens/auth/verification_code.dart';
import 'package:ecommerce_app/view/screens/language.dart';
import 'package:ecommerce_app/view/screens/onboarding.dart';
import 'package:get/get.dart';

import 'core/middleware/mymiddleware.dart';



// Map<String, Widget Function(BuildContext)> routes = {
//   '/login' : (context) => const Login(),
//   '/onboarding' : (context) => const OnBoarding(),
//   '/signup' : (context) => const Signup(),
//   '/forgotpass' : (context) => const ForgotPass(),
//   '/resetpass' : (context) => const ResetPass(),
//   '/verifycode' : (context) => const VerifyCode(),
//   '/successreset' : (context) => const SuccessReset(),
//   '/success_signup' : (context) => const SuccessSignup(),
//   '/verifycodesignup' : (context) => const VerifyCodeSignUp(),
// };


List<GetPage<dynamic>>? getRoutes = [
  GetPage(name: '/',                page: () => const Language(), middlewares: [
    MyMiddleWare(),
  ]),
  GetPage(name: '/login',           page: () => const Login(),),
  GetPage(name: '/onboarding',      page: () => const OnBoarding(),),
  GetPage(name: '/signup',          page: () => const Signup(),),
  GetPage(name: '/forgotpass',      page: () => const ForgotPass(),),
  GetPage(name: '/resetpass',       page: () => const ResetPass(),),
  GetPage(name: '/verifycode',      page: () => const VerifyCode(),),
  GetPage(name: '/successreset',    page: () => const SuccessReset(),),
  GetPage(name: '/success_signup',  page: () => const SuccessSignup(),),
  GetPage(name: '/verifycodesignup',page: () => const VerifyCodeSignUp(),),
  GetPage(name: '/home',            page: () => const HomePage(),),
];