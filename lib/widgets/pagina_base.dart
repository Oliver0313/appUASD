import 'package:flutter/material.dart';
import 'package:appuasd/paginas/noticias.dart';
import 'package:appuasd/paginas/horarios.dart';
import 'package:appuasd/paginas/preseleccion.dart';
import 'package:appuasd/paginas/deuda.dart';
import 'package:appuasd/paginas/solicitudes.dart';
import 'package:appuasd/paginas/tareas.dart';
import 'package:appuasd/paginas/eventos.dart';
import 'package:appuasd/paginas/videos.dart';
import 'package:appuasd/paginas/acerca.dart';
import 'package:appuasd/paginas/landing.dart';

class BasePage extends StatelessWidget {
  final Widget body; 

  const BasePage({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white), 
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF002776), Color(0xFF0057A6)], 
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: const Text(
          'UASD Virtual', 
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 2.0,
                color: Colors.black54,
              ),
            ],
          ),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF002776), Color(0xFF0077C0)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/yop.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Oliver Taveras',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            _buildMenuItem(context, icon: Icons.newspaper, text: 'Noticias', page: const Noticias()),
            _buildMenuItem(context, icon: Icons.calendar_today, text: 'Horarios (Mis Materias)', page: const Horario()),
            _buildMenuItem(context, icon: Icons.check_circle, text: 'Preselección', page: const Preseleccion()),
            _buildMenuItem(context, icon: Icons.attach_money, text: 'Deuda', page: const Deuda()),
            _buildMenuItem(context, icon: Icons.request_page, text: 'Solicitudes', page: const Solicitudes()),
            _buildMenuItem(context, icon: Icons.task, text: 'Mis Tareas', page: const Tareas()),
            _buildMenuItem(context, icon: Icons.event, text: 'Eventos', page: const Eventos()),
            _buildMenuItem(context, icon: Icons.video_collection, text: 'Videos', page: const Videos()),
            _buildMenuItem(context, icon: Icons.info, text: 'Mi Perfil', page: const Acerca()),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Cerrar Sesión'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Landing()),
                );
              },
            ),
          ],
        ),
      ),
      body: body, 
    );
  }

  Widget _buildMenuItem(BuildContext context, {required IconData icon, required String text, required Widget page}) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF002776)),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
