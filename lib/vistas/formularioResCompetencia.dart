import 'package:flutter/material.dart';

class ResultadosEnCompetencia extends StatelessWidget {
  ResultadosEnCompetencia({Key? key}) : super(key: key);

  final _formKey4 = GlobalKey<FormState>();

  final nombreevento = TextEditingController();
  final nombrepes = TextEditingController();
  final apellidopes = TextEditingController();
  final arranque1 = TextEditingController();
  final arranque2 = TextEditingController();
  final arranque3 = TextEditingController();
  final envion1 = TextEditingController();
  final envion2 = TextEditingController();
  final envion3 = TextEditingController();
  final biatlon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultados en competencia"),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey4,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: nombreevento,
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "Nombre del evento",
                      border: OutlineInputBorder()),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacio';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: nombrepes,
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "Nombre(s)", border: OutlineInputBorder()),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacio';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: apellidopes,
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "Apellidos", border: OutlineInputBorder()),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacio';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: arranque1,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: " Arranque (1)",
                          border: OutlineInputBorder()),
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
                    flex: 1,
                    child: TextFormField(
                      controller: arranque2,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Arranque (2)",
                          border: OutlineInputBorder()),
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
                    flex: 1,
                    child: TextFormField(
                      controller: arranque3,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Arranque (3)",
                          border: OutlineInputBorder()),
                      textAlign: TextAlign.left,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Campo vacio';
                        }
                        return null;
                      },
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: envion1,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Envión (1)",
                          border: OutlineInputBorder()),
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
                    flex: 1,
                    child: TextFormField(
                      controller: envion2,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Envión (2)",
                          border: OutlineInputBorder()),
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
                    flex: 1,
                    child: TextFormField(
                      controller: envion3,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Envión (3)",
                          border: OutlineInputBorder()),
                      textAlign: TextAlign.left,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Campo vacio';
                        }
                        return null;
                      },
                    ),
                  ),
                ]),
                const SizedBox(height: 15),
                Row(children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: biatlon,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Biatlón", border: OutlineInputBorder()),
                      textAlign: TextAlign.center,
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Campo vacio';
                        }
                        return null;
                      },
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 150,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(200, 50),
                  ),
                  onPressed: () {
                    if (_formKey4.currentState!.validate()) {}
                    print(nombreevento.text +
                        nombrepes.text +
                        apellidopes.text +
                        arranque1.text +
                        arranque2.text +
                        arranque3.text +
                        envion1.text +
                        envion2.text +
                        envion3.text +
                        biatlon.text);
                    //resetea el formulario
                    _formKey4.currentState!.reset();
                  },
                  child: const Text('Guardar'),
                )
              ],
            ),
          )),
    );
  }
}
