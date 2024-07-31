import '../../../core/class/crud.dart';
import '../../../api_links.dart';


class ResetPassData{
  Crud crud;
  ResetPassData(this.crud);

  postData({
    required String email,
    required String pass,
  }) async
  {
    var response = await crud.postData(AppLinks.resetpass,
        {
          "email" : email,
          "password" : pass,
        }
    );

    return response.fold((l) => l, (r) => r,);
  }
}