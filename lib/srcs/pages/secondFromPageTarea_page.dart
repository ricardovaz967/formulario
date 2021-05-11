import 'package:flutter/material.dart';
import 'package:prueba2/srcs/pages/formulario_page_tarea.dart';

class SecondFormPageTarea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ya eres de la muralla amarilla'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Nombre: ${parametros.nombre}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Apellido: ${parametros.apellido}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[600],
                ),
              ),
              Text(
                'edad: ${parametros.edad}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Contraseña: ${parametros.contrasena}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[600],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
