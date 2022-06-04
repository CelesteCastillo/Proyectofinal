import 'package:flutter/material.dart';
import 'package:castillo/widgets/nav.dart';

class Clientes extends StatelessWidget {
  Color primario = Color(0xFF164C99);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBVA',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primario,
          title: Text(
            'Clientes',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                      child: Text(
                        'Formulario clientes',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Nombre',
                          labelStyle: TextStyle(color: primario),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: primario,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Apellido',
                          labelStyle: TextStyle(color: primario),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: primario,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: 'Edad',
                                labelStyle: TextStyle(color: primario),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primario,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                labelText: 'Codigo Postal',
                                labelStyle: TextStyle(color: primario),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primario,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Correo Electronico',
                          labelStyle: TextStyle(color: primario),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: primario,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          labelText: 'Contraseña',
                          labelStyle: TextStyle(color: primario),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: primario,
                              width: 2.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('GUARDAR DATOS'),
                        style: ElevatedButton.styleFrom(
                          primary: primario,
                          minimumSize: Size(
                            double.infinity,
                            60,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              nav(contexto: context, active: 'clientes')
            ],
          ),
        ),
      ),
    );
  }
}
