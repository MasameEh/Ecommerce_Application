import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/localization/changelocal.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(right: 80, left: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("3".tr , style:  Theme.of(context).textTheme.headlineLarge) ,
              const SizedBox(height: 20) ,
              DefaultButton(label: "1".tr, onTap: () {
                controller.changeLang("ar");
                Get.toNamed('/onboarding');
              }),
              const SizedBox(height: 20) ,
              DefaultButton(label: "2".tr, onTap: () {
                controller.changeLang("en");
                Get.toNamed('/onboarding');
              }),
            ],
          )),
    );
  }
}