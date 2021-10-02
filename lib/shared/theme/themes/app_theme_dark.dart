import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kore/shared/theme/themes/app_theme_colors.dart';


class AppThemeDark {

  AppThemeDark._();

  static final ThemeData theme = ThemeData(

    //  
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(),

    // 
    // textTheme: GoogleFonts.montserratTextTheme(
    //   ThemeData.dark().textTheme
    // ),

    //
    // primaryColor: AppThemeColors.blue,
    
    //
    // colorScheme: ThemeData.dark().colorScheme.copyWith(
    //   primary:  AppThemeColors.blue,
    //   secondary:  AppThemeColors.blue,
    // ),
  );
}