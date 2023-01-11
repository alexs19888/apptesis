
import 'package:flutter/material.dart';


final items = List<String>.generate(15, (i) => "Pesista $i");

class ListarPesista extends StatelessWidget {
  const ListarPesista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: const Text("Listado de pesistas"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}
