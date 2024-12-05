import 'package:flutter/material.dart';
import 'package:appuasd/widgets/pagina_base.dart';

class Tareas extends StatelessWidget {
  const Tareas({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tus Tareas Pendientes',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _tareaCard(
                    'Matemáticas - Tarea 1',
                    'Fecha de entrega: 10 de diciembre\nDescripción: Resolver ejercicios de álgebra.',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Abriendo tarea...')),
                      );
                    },
                  ),
                  _tareaCard(
                    'Lengua Española - Ensayo',
                    'Fecha de entrega: 15 de diciembre\nDescripción: Escribir un ensayo sobre la literatura del Siglo XX.',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Abriendo tarea...')),
                      );
                    },
                  ),
                  _tareaCard(
                    'Química - Experimento 3',
                    'Fecha de entrega: 20 de diciembre\nDescripción: Realizar un experimento sobre la Ley de Boyle.',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Abriendo tarea...')),
                      );
                    },
                  ),
                  _tareaCard(
                    'Historia - Investigación sobre la Revolución Francesa',
                    'Fecha de entrega: 25 de diciembre\nDescripción: Realizar una investigación detallada sobre los eventos previos y posteriores a la Revolución Francesa.',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Abriendo tarea...')),
                      );
                    },
                  ),
                  _tareaCard(
                    'Inglés - Redacción de Carta Formal',
                    'Fecha de entrega: 30 de diciembre\nDescripción: Escribir una carta formal solicitando una beca de estudios.',
                    () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Abriendo tarea...')),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _tareaCard(String titulo, String descripcion, VoidCallback onPressed) {
    return Card(
      elevation: 8,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0D47A1), 
              ),
            ),
            const SizedBox(height: 10),
            Text(
              descripcion,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            
            Center(
              child: ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1E88E5), 
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                child: const Text(
                  'Ver Tarea',
                  style: TextStyle(color: Colors.white), 
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
