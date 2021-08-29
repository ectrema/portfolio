import 'package:flutter/material.dart';
import 'package:portofolio/core/translation/locale_provider.dart';
import 'package:portofolio/home/home_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'core/theme/theme_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, widget) {
        final localeProvider = Provider.of<LocaleProvider>(context);
        return MaterialApp(
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
          locale: localeProvider.locale,
          supportedLocales: [
            Locale('fr', 'FR'),
            Locale('en', 'US'),
            Locale('ja', 'JP'),
          ],
          debugShowCheckedModeBanner: false,
        );
      },
    ),
  );
}
