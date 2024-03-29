import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static Color primary = Colors.black;
  static Color primaryLight = Colors.grey.shade300;
  static Color primaryTitle = Colors.grey.shade600;
  static Color primaryBody = Colors.grey.shade400;
  static Color secondary = const Color.fromRGBO(239, 240, 255, 1);
  static ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        elevation: 0, color: Colors.white, foregroundColor: Colors.grey),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
        titleLarge: GoogleFonts.quicksand(
          color: primaryTitle,
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        titleMedium: GoogleFonts.quicksand(
          color: primaryTitle,
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
        titleSmall: GoogleFonts.quicksand(
          color: primaryTitle,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        bodyLarge: GoogleFonts.quicksand(
          color: primaryBody,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        bodyMedium: TextStyle(
            color: primaryBody,
            fontSize: 14,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis),
        bodySmall: TextStyle(
            color: primaryBody,
            fontSize: 12,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis)),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      isDense: true,
      helperStyle: GoogleFonts.quicksand(color: Colors.blueGrey),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      fillColor: Colors.grey.withOpacity(0),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.withOpacity(.5), width: 2)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.withOpacity(.5))),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.grey.withOpacity(.5))),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      errorStyle: GoogleFonts.quicksand(color: Colors.red),
      hintStyle: GoogleFonts.quicksand(color: Colors.grey.withOpacity(.7)),
      labelStyle: GoogleFonts.quicksand(color: Themes.primary, fontSize: 17),
    ),
    iconTheme: IconThemeData(color: primary),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: primary,
      // secondary: secondary,
      // brightness: Brightness.light
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            elevation: 0.5,
            backgroundColor: Themes.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
  );
}
