import 'package:flutter/material.dart';

//import 'package:flutter/rendering.dart';

import 'package:prueba2/srcs/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de mia',
      theme: ThemeData(primaryColor: Colors.yellow[600]),
      initialRoute: '/',
      routes: obtenerRutas(),
      //home: HomePage(),
    );
  }
}
