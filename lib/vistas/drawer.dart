import 'package:flutter/material.dart';
import 'package:lvp/vistas/formularioActualizarPesista.dart';
import 'package:lvp/vistas/formularioInsertarPesista.dart';
import 'package:lvp/vistas/formularioEliminarPes.dart';
import 'package:lvp/vistas/formularioResCompetencia.dart';
import 'package:lvp/vistas/reportePlanEntrenamiento.dart';

import 'listarPesistas.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body:
      Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Home.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          child: null,
        ),
      ),
        drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage('assets/logom.png'),
                    // fit: BoxFit.contain,
                  )),
              child: null,
            ),
            ListTile(
              leading: const Icon(Icons.accessibility),
              title: const Text(
                'Añadir pesista',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const FormularioInsetarPesista()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text(
                'Actualizar datos pesista',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>FormularioActualizarPesista()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete),
              title: const Text(
                'Eliminar pesista',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => FormEliminarPesista()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.app_registration),
              title: const Text(
                'Listar pesistas',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const ListarPesista()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_chart),
              title: const Text(
                'Registrar resultados en competencia',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ResultadosEnCompetencia()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.whatshot),
              title: const Text(
                'Registrar carga real del entrenamiento',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.wysiwyg),
              title: const Text(
                'Reporte del plan de entrenamiento',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ReportePlanEntrenamiento()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
