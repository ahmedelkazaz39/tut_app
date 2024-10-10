import 'package:e_commerce_app/presentation/color_manager.dart';
import 'package:e_commerce_app/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
//! main color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darktPrimary,
    disabledColor: ColorManager.grey1,

//? card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey1,
      elevation: AppSize.s4,
    ),
//! text theme

// app bar theme
//? button theme
//! input decoration theme
  );
}
