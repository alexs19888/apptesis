
import 'package:flutter/material.dart';

class FormEliminarPesista extends StatelessWidget {
  FormEliminarPesista({Key? key}) : super(key: key);

  final _formKey3 = GlobalKey<FormState>();

  final cicocontroler = TextEditingController();

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Eliminar pesista"),
      ),
      body: Container(
          padding: const EdgeInsets.all(15),
            child: Form(
              key: _formKey3,
              child: Column(children: <Widget>[
                const SizedBox(height: 120,),
                TextFormField(
                  controller: cicocontroler,
                  maxLength: 11,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 17),
                  decoration: const InputDecoration(
                      labelText: "CI",
                      border: OutlineInputBorder()
                  ),
                  textAlign: TextAlign.left, validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'Campo vacio';
                  }
                  return null;
                },
                ),
               const SizedBox(height: 100,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                    maximumSize: const Size(200, 50),
                  ),

                  onPressed: () {
                    if (_formKey3.currentState!.validate()) {}
                   if( cicocontroler.text != ""){

                    //resetea el formulario
                    _formKey3.currentState!.reset();

                    //showDialog es una alerta,  sale siempre la alerta despues de tocar el boton (REVISAR)
                    showDialog(context: context, builder: (context)=>  AlertDialog(
                      title: const Text("Eliminar"),
                      content: const Text("Se elimino el elemento correctamente "),
                      actions: <Widget> [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Aceptar'),
                          child: const Text('Aceptar'),
                        ),
                      ],
                    ),

                    );
                   }
                  },

                  child: const Text('Eliminar'),
                )
              ],
              ),
            )

      ),
    );
  }
}