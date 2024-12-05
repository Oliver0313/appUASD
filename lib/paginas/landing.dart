import 'package:flutter/material.dart';
import 'login.dart'; 

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF002776), Color(0xFF0077C0)],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Bienvenido a la UASD Virtual',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF002776),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Accede a tu información académica, gestiona tus tareas y mantente informado con las últimas noticias de la UASD.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Misión:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Formar profesionales competentes y éticos, capaces de contribuir al desarrollo de la sociedad, mediante la enseñanza de calidad, la investigación científica y la proyección social.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Visión:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Ser una universidad pública de excelencia, que impulse la formación integral, la investigación y el pensamiento crítico, para impactar positivamente en la sociedad.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Valores:',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Responsabilidad, ética, compromiso social, excelencia académica, inclusión y respeto por la diversidad.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.black87),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF002776),
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(color: Color(0xFF002776)),
                      ),
                    ),
                    child: const Text(
                      'Iniciar Sesion',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
