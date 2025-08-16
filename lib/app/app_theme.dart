import 'package:crafty_bay_ecommerce/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {

  static ThemeData get lightTheme{
    return ThemeData(
     colorScheme: ColorScheme.fromSwatch(
       primarySwatch: AppColors.getMaterialColor(AppColors.themeColor)
     ),
      inputDecorationTheme: InputDecorationTheme(
        border: _getInputBorder(AppColors.themeColor),
        focusedBorder: _getInputBorder(AppColors.themeColor),
        enabledBorder: _getInputBorder(AppColors.themeColor),
        errorBorder: _getInputBorder(Colors.red),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.grey
        )


      )
    );
  }

  static OutlineInputBorder _getInputBorder(Color color ){
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1.2.w
      )
    );
  }
}