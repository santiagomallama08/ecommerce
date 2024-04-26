import 'package:app_mobile/generated/app_localizations.dart';
import 'package:app_mobile/modules/authentication/controllers/onboarding/ChangeLenguaje_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:app_mobile/utils/theme/theme.dart';
import 'package:app_mobile/modules/authentication/screens/onboarding/onboarding.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final ChangeLanguageController changeLanguageController = Get.put(ChangeLanguageController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const OnBoardingScreen(),
      // Config l10n
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('es'), // Spanish
        Locale('en'), // English
      ],
      // locale: const Locale('es', ''),
      // locale: const Locale('en', ''),
    
      locale: changeLanguageController.locale.value == 'es' ? const Locale('en') : const Locale('es'),
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            // Cambiar idioma cuando se presiona en cualquier lugar de la pantalla
            changeLanguageController.changeLanguage(changeLanguageController.locale.value == 'es' ? 'en' : 'es');
          },
          child: child,
        );
      },
    );
  }
}
