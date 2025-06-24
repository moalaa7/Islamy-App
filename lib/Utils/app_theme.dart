import 'package:flutter/material.dart';
import 'package:islamy_app/Utils/app_color.dart';

class AppTheme {
  static ThemeData darkMode = ThemeData(
      scaffoldBackgroundColor: AppColor.transparentColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: AppColor.blackColor,
        selectedItemColor: AppColor.whiteColor,
// backgroundColor: AppColor.transparentColor
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColor.primaryColor),
          centerTitle: true,
          backgroundColor: AppColor.blackColor));
}
