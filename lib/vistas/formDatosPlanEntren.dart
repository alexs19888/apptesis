import 'package:flutter/material.dart';

class FormDatosPlanEntre extends StatefulWidget {
  const FormDatosPlanEntre({Key? key}) : super(key: key);

  @override
  _FormDatosPlanEntreState createState() => _FormDatosPlanEntreState();
}

class _FormDatosPlanEntreState extends State<FormDatosPlanEntre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos para la planificación"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Form(
            child: Column(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(fontSize: 17),
                    decoration: const InputDecoration(
                        labelText: "Imr", border: OutlineInputBorder()),
                    textAlign: TextAlign.left,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Campo vacio';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: TextFormField( maxLength: 10,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Número de repeticiones",
                          border: OutlineInputBorder()),

                ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
