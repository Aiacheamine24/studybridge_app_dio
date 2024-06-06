import 'package:dio_clean_learn/core/constants/app_sizes.dart';
import 'package:dio_clean_learn/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Light Theme
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppPallete.primaryColor,
    hintColor: AppPallete.accentColor,
    scaffoldBackgroundColor: AppPallete.scaffoldBackgroundColor,
    dialogBackgroundColor: AppPallete.backgroundColor,
    cardColor: AppPallete.cardColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.primaryColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      titleMedium: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      titleSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      displayLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      displayMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppPallete.textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppPallete.textColor,
      ),
    ),
    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppPallete.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p8),
          ),
        ),
      ),
    ),
    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppPallete.inputBackgroundColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: const BorderSide(
          color: AppPallete.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: const BorderSide(
          color: AppPallete.errorColor,
        ),
      ),
    ),
    // Icon Theme
    iconTheme: const IconThemeData(
      color: AppPallete.iconColor,
      size: Sizes.p24,
    ),
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    primaryColor: AppPallete.primaryColor,
    hintColor: AppPallete.accentColor,
    scaffoldBackgroundColor: AppPallete.scaffoldBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppPallete.primaryColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      displayMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      displaySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      titleLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppPallete.textColor,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppPallete.textColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppPallete.textColor,
      ),
    ),
    // Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppPallete.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p8),
          ),
        ),
      ),
    ),
    // Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppPallete.inputBackgroundColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: const BorderSide(
          color: AppPallete.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p8),
        borderSide: const BorderSide(
          color: AppPallete.errorColor,
        ),
      ),
    ),
    // Icon Theme
    iconTheme: const IconThemeData(
      color: AppPallete.iconColor,
    ),
  );
}
