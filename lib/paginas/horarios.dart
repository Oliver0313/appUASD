import 'package:flutter/material.dart';
import 'package:appuasd/widgets/pagina_base.dart';

class Horario extends StatelessWidget {
  const Horario({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              elevation: 10,
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Horario Semanal',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF002776),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildScheduleItem('Lunes', '8:00 AM - 10:00 AM', 'Matemáticas'),
                    _buildScheduleItem('Lunes', '10:30 AM - 12:30 PM', 'Historia'),
                    _buildScheduleItem('Martes', '8:00 AM - 10:00 AM', 'Ciencias'),
                    _buildScheduleItem('Martes', '10:30 AM - 12:30 PM', 'Lengua Española'),
                    _buildScheduleItem('Miércoles', '8:00 AM - 10:00 AM', 'Matemáticas'),
                    _buildScheduleItem('Miércoles', '10:30 AM - 12:30 PM', 'Historia'),
                    _buildScheduleItem('Jueves', '8:00 AM - 10:00 AM', 'Ciencias'),
                    _buildScheduleItem('Jueves', '10:30 AM - 12:30 PM', 'Lengua Española'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleItem(String day, String time, String subject) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0057A6),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(
            Icons.access_time,
            color: Colors.white,
            size: 28,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              '$day - $time: $subject',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
