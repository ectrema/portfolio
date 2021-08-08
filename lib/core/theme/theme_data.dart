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
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 25,
      ),
      textTheme: TextTheme(
        headline1: kHeadLine1,
        headline2: kHeadLine2,
        bodyText1: kBodyText1,
        subtitle1: kSubTitle1,
        subtitle2: kSubTitle2,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: kSecondWhiteColorDark,
        elevation: 8,
        selectedIconTheme: IconThemeData(
          color: kSecondRedColorDark,
          size: 22,
        ),
        selectedLabelTextStyle: kBodyText1.copyWith(
          color: kSecondRedColorDark,
        ),
        unselectedIconTheme: IconThemeData(
          color: kBackgroundColorDark,
          size: 22,
        ),
        unselectedLabelTextStyle: kBodyText1.copyWith(
          color: kBackgroundColorDark,
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: kBackgroundColorDark,
        elevation: 8,
      ),
    );
  }
}
