import 'package:amana_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@immutable
class AppTheme {
  static get appThemeLight => ThemeData(
        primaryColor: AppColors.primary,
        brightness: Brightness.light,
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: 'Inter',
        appBarTheme: AppBarTheme(
            elevation: 0,
            color: AppColors.transparent,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: AppColors.transparent,
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
            ),
            iconTheme: IconThemeData(color: AppColors.darkGrey)),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: AppColors.primary.withOpacity(0.57),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          border: _drawBorder(),
          focusedBorder: _drawBorder(),
          enabledBorder: _drawBorder(),
          disabledBorder: _drawBorder(),
          errorBorder: _drawBorder(color: Colors.red),
          focusedErrorBorder: _drawBorder(color: Colors.red),
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStatePropertyAll<Color>(AppColors.darkGrey),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.primary,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        cardTheme: CardTheme(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: AppColors.lightGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      );

  static UnderlineInputBorder _drawBorder({
    Color? color,
  }) =>
      UnderlineInputBorder(
        borderSide: BorderSide(
          color: color ?? AppColors.primary,
        ),
      );
}
