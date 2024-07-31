import '../../../core/class/crud.dart';
import '../../../api_links.dart';


class CheckemailData{
  Crud crud;
  CheckemailData(this.crud);

  postData({
    required String email,
  }) async
  {
    var response = await crud.postData(AppLinks.checkemail,
        {
          "email" : email,
        }
    );

    return response.fold((l) => l, (r) => r,);
  }
}