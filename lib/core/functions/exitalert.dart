import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/colors.dart';
alertExitApp() {
  Get.defaultDialog(
      title: "55".tr,
      titleStyle:const  TextStyle(color: AppColor.primaryColor , fontWeight: FontWeight.bold),
      middleText: "52".tr,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: Text("53".tr, style: TextStyle(color: Colors.white),),),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: Text("54".tr,style: const TextStyle(color: Colors.white),))
      ]);
}
