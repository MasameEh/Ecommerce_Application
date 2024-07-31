import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{
  void checkCode();
  void gotoResetPass();
}
class VerifyCodeControllerImp extends VerifyCodeController{

  String? email;
  @override
  void onInit() {
    // TODO: implement onInit
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  void checkCode() {
    // TODO: implement login

  }
  @override
  void gotoResetPass() {
    // TODO: implement gotoSignUp
    Get.offNamed('/resetpass', arguments: {
      "email" : email,
    });
  }

}
