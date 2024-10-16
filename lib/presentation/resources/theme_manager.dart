import 'package:e_commerce_app/presentation/resources/color_manager.dart';
import 'package:e_commerce_app/presentation/resources/font_manager.dart';
import 'package:e_commerce_app/presentation/resources/styles_manager.dart';
import 'package:e_commerce_app/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//! main color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darktPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary, //? ripple effect color

//? card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey1,
      elevation: AppSize.s4,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),

    //? button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.lightPrimary,
    ),

    //? Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),
        backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
//! text theme
    textTheme: TextTheme(
      headlineLarge: getSemiBoldStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s16,
      ),
      headlineMedium: getRegularStyle(
        color: ColorManager.darkGrey,
        fontSize: FontSize.s14,
      ),
      titleMedium: getMediumStyle(
        color: ColorManager.primary,
        fontSize: FontSize.s16,
      ),
       
    ),

//! input decoration theme

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(
        color: ColorManager.grey1,
        fontSize: FontSize.s14,
      ),
      labelStyle: getMediumStyle(
        color: ColorManager.grey1,
        fontSize: FontSize.s14,
      ),
      errorStyle: getRegularStyle(
        color: ColorManager.error,
      ),
      //! enable Border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.grey1,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      //! focused Border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      //! error Border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      //! focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),
  );
}
