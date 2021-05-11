import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // TextEditingController nombreTextController;

//  TextEditingController apTextController;
  String nombre;
  String apellido;
  String edad;

  FocusNode nombrefocus;
  FocusNode apellidoFocus;
  FocusNode edadFocus;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('formulario'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Rosa',
                      labelText: 'nombre'),
                  onSaved: (value) {
                    nombre = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.nombrefocus,
                  onEditingComplete: () => requestFocus(context, apellidoFocus),
                  textInputAction: TextInputAction.next,
                  
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'ejemplo: Azul',
                      labelText: 'apellido',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    apellido = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Datos incorrectos';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.apellidoFocus,
                  onEditingComplete: () => requestFocus(context, edadFocus),
                  textInputAction: TextInputAction.next,

                  
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'ejemplo: 32',
                      labelText: 'edad'),
                  onSaved: (value) {
                    edad = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'datos incorrectos';
                    } else
                      return null;
                  },
                  focusNode: this.edadFocus,
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  hoverColor: Colors.black,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();

                      if (nombre.compareTo('Leandro') == 0 &&
                          apellido.compareTo('Gachuzo') == 0) {
                        Navigator.pushNamed(context, 'formulario_dos',
                            arguments: Argumentos(
                                nombre: this.nombre,
                                apellido: this.apellido,
                                edad: this.edad));
                      }
                    }
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text('RaisedButton'),
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
  }

  @override
  void dispose() {
    super.dispose();
    nombrefocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
  }
}

class Argumentos {
  String nombre;
  String apellido;
  String edad;

  Argumentos({this.nombre, this.apellido, this.edad});
}
