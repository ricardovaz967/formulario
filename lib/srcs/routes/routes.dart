import 'package:flutter/material.dart';
import 'package:prueba2/srcs/pages/billetera_page.dart';
import 'package:prueba2/srcs/pages/botones_page.dart';
import 'package:prueba2/srcs/pages/formulario_page.dart';
import 'package:prueba2/srcs/pages/formulario_page_tarea.dart';
import 'package:prueba2/srcs/pages/fotos_page.dart';
import 'package:prueba2/srcs/pages/home_pages.dart';
import 'package:prueba2/srcs/pages/lugares_page.dart';
import 'package:prueba2/srcs/pages/mapa_page.dart';
import 'package:prueba2/srcs/pages/podcast_page.dart';
import 'package:prueba2/srcs/pages/secondFromPageTarea_page.dart';
import 'package:prueba2/srcs/pages/secondFromPage_page.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPageTarea(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'fotos': (BuildContext context) => FotosPage(),
    'podcast': (BuildContext context) => PodcastPage(),
    'lugares': (BuildContext context) => LugaresPage(),
    'formulario_dos': (BuildContext context) => SecondFormPage(),
    'formulario_tarea': (BuildContext context) => SecondFormPageTarea(),
  };
}
