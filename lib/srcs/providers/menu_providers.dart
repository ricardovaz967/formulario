import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> opciones = [];
  _MenuProvider() {
    // cargarDatos();
  }

  Future<List<dynamic>> cargarDatos() async {
    final resp = await rootBundle.loadString('assets/data/ej.json');

    Map dataMap = json.decode(resp);
    print(dataMap['nombreApp']);

    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();
