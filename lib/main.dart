import 'package:boutigi_app/core/routes/app_routes.dart';
import 'package:boutigi_app/features/splash/presintasion/views/splash_view.dart';
import 'package:boutigi_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const BoutigiApp());
}

class BoutigiApp extends StatelessWidget {
  const BoutigiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      // theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
