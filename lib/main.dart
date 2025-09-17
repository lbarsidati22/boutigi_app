import 'package:boutigi_app/core/routes/app_routes.dart';
import 'package:boutigi_app/core/services/custom_bloc_observer.dart';
import 'package:boutigi_app/core/services/get_it_services.dart';
import 'package:boutigi_app/core/services/shared_pfer_singilton.dart';
import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/features/splash/presintasion/views/splash_view.dart';
import 'package:boutigi_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url:
        "https://rtrbztcwxqdmfdgddghs.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ0cmJ6dGN3eHFkbWZkZ2RkZ2hzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTc5Nzc5NTAsImV4cCI6MjA3MzU1Mzk1MH0.rMPfcj5cA7g3VyCPqaM8-gk-fjkpBzSlJR7OB7FQS2g",
  );
  await Prefs.init();
  Bloc.observer = CustomBlocObserver();
  setupGetIt();
  runApp(const BoutigiApp());
}

class BoutigiApp extends StatelessWidget {
  const BoutigiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primaryColor,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),

        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Cairo',
      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:
          S.delegate.supportedLocales,
      locale: Locale('ar'),
      // theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
