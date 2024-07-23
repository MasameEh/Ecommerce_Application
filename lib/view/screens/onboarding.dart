import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:ecommerce_app/core/constant/colors.dart';
import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/widgets/defaultbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../size_config.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingControllerImpl controller = Get.put(OnBoardingControllerImpl());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.onPageChanged(value);
                },
                itemCount: onBoardingList.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    const SizedBox(height: 10,),
                    Text(onBoardingList[index].title!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black
                      ),
                    ),
                    const SizedBox(height: 80,),
                    Image.asset(onBoardingList[index].image!, width: SizeConfig.screenWidth *0.5, height: SizeConfig.screenHeight *0.25, fit: BoxFit.fill,),
                    const SizedBox(height: 70,),
                    Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                          onBoardingList[index].body!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            height: 2,
                            color: AppColor.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  GetBuilder<OnBoardingControllerImpl>(builder: (controller) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        onBoardingList.length,
                            (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 900),
                          width: controller.currPage == index ? 20 : 6,
                          height: 6,
                          decoration: const BoxDecoration(
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60,),
                    child: DefaultButton(
                      label: '9'.tr,
                      margin: const EdgeInsets.only(top: 90),
                      onTap: () {
                            controller.next();
                        },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
