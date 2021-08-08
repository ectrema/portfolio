import 'package:flutter/material.dart';

import 'datasource_constant.dart';

class XThemeData {
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      accentColorBrightness: Brightness.dark,
      primaryColorBrightness: Brightness.dark,
      primaryColor: kSecondRedColorDark,
      accentColor: kSecondWhiteColorDark,
      backgroundColor: kBackgroundColorDark,
      canvasColor: kThirdColorDark,
      focusColor: Colors.grey[600],
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kBackgroundColorDark,
        selectedItemColor: kSecondRedColorDark,
        unselectedItemColor: kSecondWhiteColorDark,
      ),
      scaffoldBackgroundColor: kBackgroundColorDark,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: kSecondRedColorDark,
        selectionColor: Colors.black12,
        selectionHandleColor: kSecondRedColorDark,
      ),
      appBarTheme: AppBarTheme(
        color: kBackgroundColorDark,
        iconTheme: IconThemeData(
          color: kThirdColorDark,
        ),
        textTheme: TextTheme(
          headline1: kHeadLine.copyWith(color: kSecondRedColorDark),
        ),
      ),
      iconTheme: IconThemeData(
        color: kThirdColorDark,
        size: 25,
      ),
      textTheme: TextTheme(
        bodyText2: kBodyText.copyWith(
          color: kSecondWhiteColorDark,
        ),
        subtitle2: kHeadLine.copyWith(
          color: kSecondRedColorDark,
        ),
        headline1: kHeadLine.copyWith(
          color: kSecondRedColorDark,
        ),
        headline5: kHeadLine.copyWith(
          color: kSecondWhiteColorDark,
        ),
      ),
      cardColor: kBackgroundColorDark,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kSecondRedColorDark),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kSecondRedColorDark),
        ),
      ),
    );
  }
}
