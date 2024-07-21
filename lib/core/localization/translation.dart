import 'package:get/get.dart';

class MyTranslation extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'ar' : {
      '1' : 'اللغة العربية',
      '2' : 'اللغة الانجليزية',
      '3' : 'اختر اللغة المناسبة',
    },
    'en' : {
      '1' : 'Ar',
      '2' : 'EN',
      '3' : 'Choose Language',
    },
  };
}