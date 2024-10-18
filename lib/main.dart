import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firabase/firebase_options.dart';
import 'package:flutter_firabase/pages/home_page.dart';
import 'package:flutter_firabase/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  // Se asegura que Flutter esté correctamente inicializado antes de ejecutar cualquier código.
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa Firebase para utilizar sus servicios en la aplicación.
  await Firebase.initializeApp();

  // Ejecuta la aplicación llamando a MyApp como punto de entrada.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Devuelve un MaterialApp que define el diseño general de la aplicación.
    return MaterialApp(
      // Título que se muestra en el gestor de tareas del dispositivo.
      title: 'Firetask',
      
      // Define el tema de la aplicación, como la tipografía personalizada y el color primario.
      theme: ThemeData(
        // Aplica la fuente 'Manrope' a todo el texto de la app.
        textTheme: GoogleFonts.manropeTextTheme(),
        
        // Define azul como el color principal de la aplicación.
        primarySwatch: Colors.blue,
      ),
      
      // La pantalla inicial de la aplicación será la página de inicio de sesión (LoginPage).
      home: LoginPage(),
    );
  }
}
