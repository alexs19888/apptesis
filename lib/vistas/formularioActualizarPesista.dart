import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormularioActualizarPesista extends StatefulWidget {
  const FormularioActualizarPesista({Key? key}) : super(key: key);

  @override
  _FormularioActualizarPesistaState createState() =>
      _FormularioActualizarPesistaState();
}

class _FormularioActualizarPesistaState
    extends State<FormularioActualizarPesista> {
  String OrdenSelec = "";
  String OrdenSelecP = "";

  final _formKey2 = GlobalKey<FormState>();

  final nombrecontroler = TextEditingController();
  final apellidocontroler = TextEditingController();
  final cicocontroler = TextEditingController();
  final edadcontroler = TextEditingController();
  final sexocontroler = TextEditingController();
  final pesocorporalcontroler = TextEditingController();
  final divisioncontroler = TextEditingController();
  final tallacontroler = TextEditingController();
  final provinciacontroler = TextEditingController();
  final fechainiciodeportecontroler = TextEditingController();
  final fechaingresoequipocontroler = TextEditingController();
  final arranquecontroler = TextEditingController();
  final envioncontroler = TextEditingController();
  final biatloncontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {

    String OrdenSelec = "";
    String OrdenSelecP = "";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Actualizar datos del pesista"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Form(
            key: _formKey2,
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: nombrecontroler,
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
                  controller: apellidocontroler,
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
                TextFormField(
                  controller: cicocontroler,
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "CI", border: OutlineInputBorder()),
                  textAlign: TextAlign.left,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Campo vacio o no es un número CI';
                    }
                    return null;
                  },
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(children: [
                  Expanded(
                    child: DropdownButtonFormField(
                      items: <String>[
                        "Pinar del Rio","Isla de Juventud","Artemisa","Mayabeque",
                        "La habana","Matanzas","Cienfuegos","Villa Clara","Santi Spiritus",
                        "Ciego de Avila","Camaguey","Las tunas","Granma",
                        "Holguin","Santiago de Cuba","Guantanamo",
                      ]
                          .map((i) => DropdownMenuItem<String>(
                        value: i,
                        child: Text(i),
                      ))
                          .toList(),
                      hint: OrdenSelecP == ""
                          ? Text(
                          style: TextStyle(fontSize: 17),"Seleccionar provincia"): Text(style: TextStyle(fontSize: 17), OrdenSelecP),
                      onChanged: (value1) => {
                        setState(() {
                          OrdenSelecP = value1.toString();
                          provinciacontroler==OrdenSelecP;
                        })
                      },
                    ),
                  ),
                  const SizedBox(width: 30),
                  Expanded(
                    child: DropdownButtonFormField(
                      items: <String>["Femenino", "Masculino", "Otro"]
                          .map((i) => DropdownMenuItem<String>(
                        value: i,
                        child: Text(i),
                      ))
                          .toList(),
                      hint: OrdenSelec == ""
                          ? Text(
                          style: TextStyle(fontSize: 17),"Seleccionar sexo"): Text(style: TextStyle(fontSize: 17), OrdenSelec),
                       onChanged: (value) => {
                        setState(() {
                          OrdenSelec = value.toString();
                          provinciacontroler==OrdenSelec;
                        })
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
                      controller: pesocorporalcontroler,
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Peso corporal",
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
                      controller: divisioncontroler,
                      maxLength: 6,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "División", border: OutlineInputBorder()),
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
                      controller: tallacontroler,
                      maxLength: 3,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Talla cm", border: OutlineInputBorder()),
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
                    //debo cambiar para un select
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: provinciacontroler,
                      maxLength: 2,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Edad", border: OutlineInputBorder()),
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
                      controller: fechainiciodeportecontroler,
                      maxLength: 10,
                      keyboardType: TextInputType.datetime,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Fecha ingreso deporte",
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
                      controller: fechaingresoequipocontroler,
                      maxLength: 10,
                      keyboardType: TextInputType.datetime,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Fecha ingreso E/N",
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
                      controller: arranquecontroler,
                      maxLength: 5,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Arranque", border: OutlineInputBorder()),
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
                      controller: envioncontroler,
                      maxLength: 5,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Envión", border: OutlineInputBorder()),
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
                      controller: biatloncontroler,
                      maxLength: 5,
                      keyboardType: TextInputType.number,
                      style: const TextStyle(fontSize: 17),
                      decoration: const InputDecoration(
                          labelText: "Biatlón", border: OutlineInputBorder()),
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
                  height: 75,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(200, 50),
                  ),
                  onPressed: () {
                    if (_formKey2.currentState!.validate()) {
                      //resetea el formulario
                      _formKey2.currentState!.reset();
                    }
                  },
                  child: const Text('Guardar'),
                )
              ],
            )),
      ),
    );
  }
}
