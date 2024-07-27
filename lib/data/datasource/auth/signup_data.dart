import '../../../core/class/crud.dart';
import '../../../api_links.dart';


class SignupData{
  Crud crud;
  SignupData(this.crud);

  postData({
    required String username,
    required String email,
    required String pass,
    required String phone
  }) async
  {
    var response = await crud.postData(AppLinks.signup,
        {
          "username" : username,
          "email" : email,
          "password" : pass,
          "phone" : phone,
        }
    );

    return response.fold((l) => l, (r) => r,);
  }
}