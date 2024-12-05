import 'package:flutter/material.dart';
import 'acerca.dart'; 
import 'noticias.dart'; 
import 'preseleccion.dart'; 
import 'deuda.dart'; 
import 'tareas.dart'; 
import 'eventos.dart'; 
import 'videos.dart'; 

class MenuPrincipal extends StatelessWidget {
  const MenuPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      body: const Acerca(), 
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Oliver Taveras',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Acerca de'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Acerca()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.article),
              title: const Text('Noticias'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Noticias()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('Preselección'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Preseleccion()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.attach_money),
              title: const Text('Deudas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Deuda()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.task),
              title: const Text('Mis Tareas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tareas()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Eventos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Eventos()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_library),
              title: const Text('Videos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Videos()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
