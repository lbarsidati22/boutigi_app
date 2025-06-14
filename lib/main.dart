import 'package:boutigi_app/core/routes/app_routes.dart';
import 'package:boutigi_app/core/services/custom_bloc_observer.dart';
import 'package:boutigi_app/core/services/get_it_services.dart';
import 'package:boutigi_app/core/services/shared_pfer_singilton.dart';
import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/features/home/presentation/views/home_view.dart';
import 'package:boutigi_app/firebase_options.dart';
import 'package:boutigi_app/generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:
        DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPferSingilton.init();
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
      initialRoute: HomeView.routeName,
    );
  }
}
