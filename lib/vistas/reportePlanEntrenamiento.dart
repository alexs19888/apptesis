import 'package:flutter/material.dart';



final items = List<String>.generate(15, (i) => "Plan $i");

class ReportePlanEntrenamiento extends StatelessWidget {
  const ReportePlanEntrenamiento({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Plan"),
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

