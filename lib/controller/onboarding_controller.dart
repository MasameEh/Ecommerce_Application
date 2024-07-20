import 'package:ecommerce_app/data/datasource/static/static.dart';
import 'package:ecommerce_app/view/screens/auth/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController{
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImpl extends OnBoardingController{
  late PageController pageController;

  int currPage = 0;

  @override
  next(){
    currPage++;
    if(currPage > onBoardingList.length - 1){
      Get.offAllNamed('/login');
    }else{
      pageController.animateToPage(
          currPage,
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInOut,
      );
    }

  }

  @override
  onPageChanged(int index){
    currPage = index;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageController = PageController();
    super.onInit();
  }
}
