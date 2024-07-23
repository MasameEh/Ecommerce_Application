import 'package:ecommerce_app/view/size_config.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:ecommerce_app/view/widgets/logo_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgotpass_controller.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/image_asset.dart';
import '../../../widgets/defaultextformfield.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPassControllerImp controller = Get.put(ForgotPassControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text('26'.tr,
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
            "27".tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "44".tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 30),
          DefaultTextFormField(
            label: '19'.tr,
            controller: controller.emailController,
            hint: '13'.tr,
            type: TextInputType.emailAddress,
            suffix: Icons.email_outlined,
          ),
          const SizedBox(height: 30),
          DefaultButton(
            label: '31'.tr,
            onTap: () {
              controller.gotoVerifyCode();
            },
          ),
        ]),
      ),
    );
  }
}
