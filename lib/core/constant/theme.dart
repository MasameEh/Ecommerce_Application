import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

ThemeData themeEnglish = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    checkboxTheme: const CheckboxThemeData(
        side: BorderSide(
          color: AppColor.grey,
        )),
    appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: AppColor.grey),
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        )
    ),
    unselectedWidgetColor: AppColor.grey,
    colorScheme: ThemeData().colorScheme.copyWith(
      primary: AppColor.primaryColor,
    ),
    fontFamily: "JosefinSans",
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight:
          FontWeight.bold,
          fontSize: 22,
          color: Colors.black
      ),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: Colors.black
      ),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColor.primaryColor
      ),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14
      ),
      bodyMedium:
      TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
    )
);

ThemeData themeArabic = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    checkboxTheme: const CheckboxThemeData(
        side: BorderSide(
          color: AppColor.grey,
        )),
    appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        )
    ),
    unselectedWidgetColor: AppColor.grey,
    colorScheme: ThemeData().colorScheme.copyWith(
      primary: AppColor.primaryColor,
    ),
    fontFamily: "Cairo",
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight:
          FontWeight.bold,
          fontSize: 22,
          color: Colors.black
      ),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 26,
          color: Colors.black
      ),
      headlineSmall: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: AppColor.primaryColor
      ),
      bodyLarge: TextStyle(
          height: 2,
          color: AppColor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14
      ),
      bodyMedium:
      TextStyle(height: 2, color: AppColor.grey, fontSize: 14),
    )
);