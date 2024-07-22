
import 'package:ecommerce_app/view/size_config.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';

import '../../../../core/constant/colors.dart';

class SuccessReset extends StatelessWidget {
  const SuccessReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('Success',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              )),
          Text("congratulations",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 30, color: AppColor.primaryColor)),
          Text("Password has been reset successfully".tr),
          SizedBox(height: SizeConfig.screenHeight * 0.05),
          DefaultButton(
              label: 'Done',
              onTap: () {
                Get.offNamed('/login');
              },
          ),
        ]),
      ),
    );
  }
}
