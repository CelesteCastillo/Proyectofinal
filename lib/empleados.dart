import 'package:flutter/material.dart';
import 'package:castillo/widgets/nav.dart';

class Empleados extends StatelessWidget {
  Color primario = Color(0xFF164C99);
  Color secundario = Color(0xFF0099ff);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Empleados',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primario,
            centerTitle: true,
            title: Text(
              'Empleados',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              tabs: [
                Tab(child: Text('Lista de empleados', style: TextStyle(color: Colors.white))),
                Tab(child: Text('Registro', style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                          child: Text(
                            'Empleados destacados',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: SizedBox(
                            height: 400,
                            width: double.infinity,
                            child: ListView(
                              children: ListTile.divideTiles(
                                context: context,
                                tiles: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado1.jpg?raw=true'),
                                    ),
                                    title: Text('Sergio Pinedo Revilla'),
                                    subtitle: Text('Gerente'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado2.jpg?raw=true'),
                                    ),
                                    title: Text('Marcela Pintor-Expósito'),
                                    subtitle: Text('Director comercial'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado3.jpg?raw=true'),
                                    ),
                                    title: Text('Bartolomé Codina Ballester'),
                                    subtitle: Text('Director de Marketing'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado4.jpg?raw=true'),
                                    ),
                                    title: Text('Adalberto Catalá Garriga'),
                                    subtitle: Text('Director de recursos humanos'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado5.jpg?raw=true'),
                                    ),
                                    title: Text('Eleuterio Valle'),
                                    subtitle: Text('Director financiero'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado6.jpg?raw=true'),
                                    ),
                                    title: Text('Alondra Porcel Arco'),
                                    subtitle: Text('Empleado destacado'),
                                  ),
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage: NetworkImage('https://github.com/JoseMendozat/imagenes/blob/main/empleado7.jpg?raw=true'),
                                    ),
                                    title: Text('Luz Jove Ruiz'),
                                    subtitle: Text('Empleado destacado'),
                                  ),
                                ],
                              ).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    nav(contexto: context, active: 'empleados')
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10), child: Text('Solicitud de trabajo', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
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
                                labelText: 'CURP',
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
                                labelText: 'RFC',
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
                              onPressed: () {
                                Navigator.pushNamed(context, '/inicio');
                              },
                              child: Text('MANDAR SOLICITUD'),
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
                          SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                    ),
                    nav(contexto: context, active: 'empleados')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
