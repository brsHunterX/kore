// FLUTTER
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// COLORS
import 'package:kore/shared/theme/app_theme_colors.dart';


class AppThemeDark {

  AppThemeDark._();

  static final ThemeData theme = ThemeData(

    //  

    brightness: Brightness.dark,

    // 

    textTheme: GoogleFonts.ralewayTextTheme(
      ThemeData.dark().textTheme
    ),
    
    //
     
    primaryColor: AppThemeColors.blue,
    accentColor: AppThemeColors.blue,
  );
}