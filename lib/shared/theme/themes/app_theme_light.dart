import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kore/shared/theme/themes/app_theme_colors.dart';

class AppThemeLight {

  AppThemeLight._();

  static final ThemeData theme = ThemeData(

    // 
    brightness: Brightness.light,

    // 
    textTheme: GoogleFonts.montserratTextTheme(
      ThemeData.light().textTheme
    ),

    //
    primaryColor: AppThemeColors.blue,
    
    //
    colorScheme: ThemeData.light().colorScheme.copyWith(
      primary:  AppThemeColors.blue,
      secondary:  AppThemeColors.blue,
    ),
  );
}