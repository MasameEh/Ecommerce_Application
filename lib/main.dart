import 'package:ecommerce_app/core/localization/translation.dart';
import 'package:ecommerce_app/view/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'bindings/initial_bindings.dart';
import 'core/constant/colors.dart';
import 'core/services/services.dart';
import 'core/localization/changelocal.dart';
import 'routes.dart';
import 'view/screens/language.dart';
import 'view/size_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    SizeConfig().init(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.lang,
      theme: controller.appTheme,
      initialBinding: InitialBindings(),
      getPages: getRoutes,
    );
  }
}
