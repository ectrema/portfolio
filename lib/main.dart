import 'package:flutter/material.dart';
import 'package:portofolio/home/home_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/theme/theme_data.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Portofolio Minel Benjamin',
      themeMode: ThemeMode.dark,
      theme: XThemeData.dark(),
      home: HomeView(),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fr', ''),
        Locale('en', ''),
      ],
      debugShowCheckedModeBanner: false,
    ),
  );
}
