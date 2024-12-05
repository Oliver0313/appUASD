import 'package:flutter/material.dart';
import '../estilos/colores.dart';

class PaginaInicio extends StatelessWidget {
  const PaginaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos a la UASD'),
        backgroundColor: Colores.azulUASD,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo2.png', height: 150),
          const SizedBox(height: 20),
          const Text(
            'Universidad Autónoma de Santo Domingo',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            child: const Text('Iniciar Sesión'),
          ),
        ],
      ),
    );
  }
}

