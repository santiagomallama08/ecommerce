
import 'package:flutter/material.dart';
import 'package:app_mobile/modules/authentication/controllers/onboarding/ChangeLenguaje_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ElevatedButton(
              onPressed: () {
                // Obtener la instancia del controlador de cambio de idioma
                final changeLanguageController = ChangeLanguageController();
                // Llamar al método para cambiar el idioma
                changeLanguageController.changeLanguage(
                  changeLanguageController.locale.value == 'es' ? 'en' : 'es',
                );
                print('Cambio de idioma');
              },
              child: const Text('Cambiar idioma'),
            ),
          ],
        ),
      ),
    );
  }
}