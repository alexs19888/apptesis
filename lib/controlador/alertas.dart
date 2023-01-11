
import 'package:flutter/material.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Eliminar'),
          content: const Text('Esta seguro que desea eliminar el pesista'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Aceptar'),
              child: const Text('Aceptar'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }

  }

