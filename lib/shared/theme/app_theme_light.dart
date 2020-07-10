// FLUTTER
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// COLORS
import 'package:kore/shared/theme/app_theme_colors.dart';


class AppThemeLight {

  AppThemeLight._();

  static final ThemeData theme = ThemeData(

    // 

    brightness: Brightness.light,

    // 

    textTheme: GoogleFonts.openSansTextTheme(
      ThemeData.light().textTheme
    ),
    
    //
     
    primaryColor: AppThemeColors.blue,
    accentColor: AppThemeColors.blue,
  );
}