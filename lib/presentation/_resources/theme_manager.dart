import 'package:flutter/material.dart';
import 'package:thestream/presentation/_resources/color_manager.dart';
import 'package:thestream/presentation/_resources/font_manager.dart';
import 'package:thestream/presentation/_resources/styles_manager.dart';
import 'package:thestream/presentation/_resources/value_manager.dart';

class ThemeManager {
  static getApplicationTheme() {
    return ThemeData(
      // Add colors for the app;
      primaryColor: ColorManager.primary,
      primaryColorDark: ColorManager.primaryDark,
      primaryColorLight: ColorManager.primaryLight,
      disabledColor: ColorManager.disabledColor,
      secondaryHeaderColor: ColorManager.grey,
      scaffoldBackgroundColor: ColorManager.background,
      backgroundColor: ColorManager.background,

      // Add theme for card
      cardTheme: CardTheme(
        color: ColorManager.background,
        shadowColor: ColorManager.lightGrey,
        elevation: AppSize.s4,
      ),

      // Add Theme for Appbar
      appBarTheme: AppBarTheme(
        centerTitle: false,
        titleSpacing: AppSize.s0,
        color: ColorManager.primaryText,
        elevation: AppSize.s0,
        shadowColor: ColorManager.grey,
        titleTextStyle: StylesManager.getLightStyle(color: ColorManager.titleColor, fontSize: FontSize.s38),
      ),

      // Add theme for Buttons
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        buttonColor: ColorManager.button,
        splashColor: ColorManager.primaryLight,
        disabledColor: ColorManager.disabledColor,
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: StylesManager.getRegularStyle(color: ColorManager.primary),
          primary: ColorManager.button,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)
          ),
        )
      ),

      // Add Theme for Text
      textTheme: TextTheme(
        headline1: StylesManager.getSemiBoldStyle(color: ColorManager.primaryText, fontSize: FontSize.s16),
        subtitle1: StylesManager.getMediumStyle(color: ColorManager.primaryText, fontSize: FontSize.s14),
        caption: StylesManager.getRegularStyle(color: ColorManager.primaryText, fontSize: FontSize.s12),
        bodyText1: StylesManager.getRegularStyle(color: ColorManager.primaryText, fontSize: FontSize.s12),
      ),

      //TextField Theme
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppSize.s12),
        hintStyle: StylesManager.getRegularStyle(color: ColorManager.hintColor),
        labelStyle: StylesManager.getRegularStyle(color: ColorManager.hintColor, fontSize: FontSize.s12),
        errorStyle: StylesManager.getRegularStyle(color: ColorManager.errorText, fontSize: FontSize.s12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: const BorderSide(
            width: 0,
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: const BorderSide(
            width: 0,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: const BorderSide(
            width: 0,
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: const BorderSide(
            width: 0,
          )
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
          borderSide: const BorderSide(
            width: 0,
          )
        )
      )
    );
  }
}
