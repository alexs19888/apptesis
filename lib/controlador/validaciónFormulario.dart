import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ValidacionForm extends StatelessWidget {
  const ValidacionForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

String? validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return null;
  }
}

String? validateCI(String value) {
  String pattern = r'(^[0-9]*$)';
  RegExp regExpre = RegExp(pattern);
  if (value.isEmpty) {
    return "El elemento es necesario";
  } else if (value.length != 11) {
    return "El número de CI debe contener 11 digitos";
  }
  return null;
}

