import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Mi Aplicación';

  @override
  String get content => 'Hola';

  @override
  String onboarding(String name) {
    String _temp0 = intl.Intl.selectLogic(
      name,
      {
        'onBoardingTitle1': 'Elija su producto',
        'onBoardingSubTitle1': 'Bienvenido a un mundo de opciones ilimitadas: ¡su producto perfecto le espera!',
        'onBoardingTitle2': 'Seleccione el método de pago',
        'onBoardingSubTitle2': 'Para realizar transacciones sin problemas, elija su forma de pago',
        'onBoardingTitle3': 'Entrega a domicilio',
        'onBoardingSubTitle3': '¡Entrega rápida, segura y sin contacto!',
        'login': '¡Hola inicia sesion para cambiar idioma!',
        'other': '',
      },
    );
    return '$_temp0';
  }
}
