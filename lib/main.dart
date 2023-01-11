import 'package:flutter/material.dart';
import 'package:lvp/vistas/drawer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Levantamiento de Pesas';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //para eliminar el baner rojo de la apps
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyMenu(title: appTitle),

    );

  }

}


