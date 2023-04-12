import 'package:amana_task/config/di/injectable.dart';
import 'package:amana_task/config/routes/app_router.dart';
import 'package:amana_task/config/routes/app_routes.dart';
import 'package:amana_task/config/themes/app_theme.dart';
import 'package:amana_task/core/utils/app_strings.dart';
import 'package:amana_task/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, _) {
          return MaterialApp(
            title: AppStrings.appName,
            theme: AppTheme.appThemeLight,
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Constants.arabic // support arabic only
            ],
            locale: Constants.arabic,
            onGenerateRoute: AppRouter.onGenerateRoute,
            initialRoute: AppRoutes.loginPageRoute,
          );
        });
  }
}
