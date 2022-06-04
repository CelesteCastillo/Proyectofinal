import 'package:flutter/material.dart';
import 'package:castillo/login.dart';
import 'package:castillo/inicio.dart';
import 'package:castillo/clientes.dart';
import 'package:castillo/recibos.dart';
import 'package:castillo/empleados.dart';
import 'package:castillo/desarrollador.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hello World',
      initialRoute: '/inicio',
      routes: {
        '/': (context) => Login(),
        '/inicio': (context) => Inicio(),
        '/clientes': (context) => Clientes(),
        '/recibos': (context) => Recibos(),
        '/empleados': (context) => Empleados(),
        '/desarrollador': (context) => Desarrollador(),
      },
    );
  }
}
