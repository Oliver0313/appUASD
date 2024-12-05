import 'package:flutter/material.dart';
import 'package:appuasd/widgets/pagina_base.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido a la App UASD!',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF002776)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            Text(
              'Aquí podrás gestionar tu vida académica de manera eficiente y acceder a las herramientas que necesitas para tu éxito universitario.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
