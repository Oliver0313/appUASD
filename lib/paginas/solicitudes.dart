import 'package:flutter/material.dart';
import 'package:appuasd/widgets/pagina_base.dart';

class Solicitudes extends StatelessWidget {
  const Solicitudes({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Tus Solicitudes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildSolicitudItem('Solicitud de Certificado', 'Procesando', Colors.orange),
            _buildSolicitudItem('Solicitud de Cambio de Carrera', 'Aprobada', Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildSolicitudItem(String title, String status, Color color) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(
          'Estado: $status',
          style: TextStyle(color: color),
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
