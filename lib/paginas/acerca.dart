import 'package:flutter/material.dart';
import 'package:appuasd/widgets/pagina_base.dart';

class Acerca extends StatelessWidget {
  const Acerca({super.key});

  @override
  Widget build(BuildContext context) {
    return const BasePage(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40), 
              CircleAvatar(
                radius: 60, 
                backgroundImage: AssetImage('assets/yop.jpg'), 
              ),
              SizedBox(height: 15), 
              Text(
                'Oliver Taveras',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), 
              ),
              Text(
                'Matrícula: 20210328',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 15), 
              Text(
                'Estudiante de la Facultad de Ciencias de la Ingeniería\n'
                'Carrera: Ingeniería en Sistemas',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14), 
              ),
              SizedBox(height: 25), 
              Text(
                'Esta aplicación fue desarrollada como un proyecto educativo para la Universidad Autónoma de Santo Domingo (UASD).',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
