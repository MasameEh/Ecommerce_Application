import '../../../core/class/crud.dart';
import '../../../api_links.dart';


class LoginData{
  Crud crud;
  LoginData(this.crud);

  postData({
    required String email,
    required String pass,
  }) async
  {
    var response = await crud.postData(AppLinks.login,
        {
          "email" : email,
          "password" : pass,
        }
    );

    return response.fold((l) => l, (r) => r,);
  }
}