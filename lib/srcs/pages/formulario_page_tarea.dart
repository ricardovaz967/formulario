import 'package:flutter/material.dart';

class FormPageTarea extends StatefulWidget {
  @override
  _FormPageTareaState createState() => _FormPageTareaState();
}

class _FormPageTareaState extends State<FormPageTarea> {
  String nombre;
  String apellido;
  String edad;
  String contrasena;
  String t = 'Por favor llenar todos los campos';

  FocusNode nombrefocus;
  FocusNode apellidoFocus;
  FocusNode edadFocus;
  FocusNode contrasenaFocus;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulario Ricardo Vazquez'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Text(
                    'Borussia Dortmund',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Ricardo',
                      labelText: 'nombre',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    nombre = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'los datos incorrectos no se han encontrado en la BD';
                    } else
                      return null;
                  },
                  focusNode: this.nombrefocus,
                  onEditingComplete: () => requestFocus(context, apellidoFocus),
                  textInputAction: TextInputAction.next,
                  // autofocus: true,
                  //  controller: nombreTextController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'ejemplo: vazquez',
                      labelText: 'apellido',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    apellido = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'los datos son incorrectos o no se han encontrado en la BD';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.apellidoFocus,
                  onEditingComplete: () => requestFocus(context, edadFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: 31',
                      labelText: 'edad',
                      prefixIcon: Icon(Icons.calendar_today)),
                  onSaved: (value) {
                    edad = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.edadFocus,
                  onEditingComplete: () =>
                      requestFocus(context, contrasenaFocus),
                  textInputAction: TextInputAction.next,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: olakase',
                      labelText: 'contraseña',
                      prefixIcon: Icon(Icons.content_paste_sharp)),
                  onSaved: (value) {
                    contrasena = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.contrasenaFocus,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    'todos los campos son necesarios',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 50,
                  child: RaisedButton(
                    hoverColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();

                        if (nombre.compareTo('ricardo') == 0 &&
                            apellido.compareTo('vazquez') == 0) {
                          Navigator.pushNamed(context, 'formulario_tarea',
                              arguments: Argumentos(
                                  nombre: this.nombre,
                                  apellido: this.apellido,
                                  edad: this.edad,
                                  contrasena: this.contrasena));
                        } else if (nombre.compareTo('') == 0 &&
                            apellido.compareTo('') == 0) {
                          Text('juasjuas');
                        }
                      }
                    },
                    color: Colors.black,
                    textColor: Colors.yellowAccent,
                    child: Text('Echte Liebe'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void initState() {
    super.initState();
    nombrefocus = FocusNode();
    apellidoFocus = FocusNode();
    edadFocus = FocusNode();
    contrasenaFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nombrefocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
    contrasenaFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String apellido;
  String edad;
  String contrasena;

  Argumentos({this.nombre, this.apellido, this.edad, this.contrasena});
}
