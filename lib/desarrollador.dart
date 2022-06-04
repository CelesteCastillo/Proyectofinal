import 'package:flutter/material.dart';
import 'package:castillo/widgets/nav.dart';
import 'package:flutter/widgets.dart';

class Desarrollador extends StatelessWidget {
  Color primario = Color(0xFF164C99);
  Color secundario = Color(0xFF0099ff);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desarrollador',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primario,
            centerTitle: true,
            title: Text(
              'Desarrollador',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              tabs: [
                Tab(child: Text('Datos', style: TextStyle(color: Colors.white))),
                Tab(child: Text('Conclusion', style: TextStyle(color: Colors.white))),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://github.com/CelesteCastillo/foto/blob/main/C.jpg?raw=true'),
                                radius: 40,
                              ),
                              Text(
                                'Celeste Castillo',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 3,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                          child: SizedBox(
                            height: 300,
                            width: double.infinity,
                            child: ListView(
                              children: ListTile.divideTiles(
                                context: context,
                                tiles: [
                                  Material(
                                    elevation: 5,
                                    child: ListTile(
                                      tileColor: Colors.white,
                                      leading: Icon(Icons.groups, color: primario),
                                      title: Text(
                                        'Grupo',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text('6to-J | A', style: TextStyle(fontSize: 16)),
                                    ),
                                  ),
                                  Material(
                                    elevation: 5,
                                    child: ListTile(
                                      tileColor: Colors.white,
                                      leading: Icon(Icons.code, color: primario),
                                      title: Text(
                                        'Especialidad',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text('Programación', style: TextStyle(fontSize: 16)),
                                    ),
                                  ),
                                  Material(
                                    elevation: 10,
                                    child: ListTile(
                                      tileColor: Colors.white,
                                      leading: Icon(Icons.school, color: primario),
                                      title: Text(
                                        'Escuela',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text('CBTIS 128', style: TextStyle(fontSize: 16)),
                                    ),
                                  ),
                                  Material(
                                    elevation: 5,
                                    child: ListTile(
                                      tileColor: Colors.white,
                                      leading: Icon(Icons.insert_drive_file, color: primario),
                                      title: Text(
                                        'Tema',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      subtitle: Text('Banco', style: TextStyle(fontSize: 16)),
                                    ),
                                  ),
                                ],
                              ).toList(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    nav(contexto: context, active: 'desarrollador')
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                            child: Text(
                              'Conclusiones del proyecto',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                            child: Text(
                              'En este proyecto vimos las funciones básicas y compuestas de una app, pudimos hacer un inicio para dar información de nuestra app,pudimos hacer seccion para registrarte o para entrar con ayuda de un login,textfield ,filas y columnas,en esta seccion encontramos la creacion de cuenta de empleado con 6 campos disponibles para su llenado tambien con ayuda de  textfield,no tenia mucho cambio pero era necesario para dar enfoque a la inicio por parte de cliente normal y un empleado del banco ya que se cuenta con diferente informacion dependiendo de quien inicie o cree su cuenta bancaria,se tiene un navbar que nos ayuda a darle seccion a cada pantalla (dependiendo si tiene permiso para tener un navbar ,hay secciones que no se tiene permitido pues es la interfaz de la aplicacion),tenemos la seccion de empleado que nos brinda alguna informacion que sea de relevancia como tambien la seccion de empleados seleccionados para sucural donde se tien un listview ,con ayuda de un boton regresamos a la seccion de empleado para seguir navegando y encontrar tus datos o datos de usuario,en este caso los datos del desarrollador que brinda un row que contiene los contenedores con url de mis paginas web escolares ,informacion de especialidad ente otros con ayuda de text,al final tenemos esta seccion que con ayuda de imagenes ,botones rating bar podemos dar una conclusion de nuestro proyecto de manera estetica y funcional.Esta pagina tiene secciones personales como con navbar,row,textfield,text,columnas filas,botones,card,row,girlniew ,todo con funciones y no todo repetitivo pues cada seccion tiene algo en particular .Esta app demustra lo aprendido en clase durante 3 unidades de programacion con el profesor y tutor Nava Rodriguez Eliseo Manuel.Es dinamica ,facil de usar ,entendible para el usuario ademas de practica,usando elementos de flutter ,con ayuda de tutoriales de clase ,youtube y paginas web como codeslider,fluttercodes..entre otras .Ademas del uso de conexiones como link de imagenes directamente de internet , con ayuda de github y sus repositorios ,ademas de guardarlas en tu cube y subirlas directamente,esto llego a su fin para concluir que todo es posible y los limitantes los pone el desarrollador.Todo esto en la app de flutlab que tiene un desarrollador en forma de celular para que tengas visión de tu proyecto, además de tener opciones de conexiones con repositorios con github ,asi será fácil su guardado.Esta es muy dinámica pues puedes descargar tu app desde tu celular y navegar en esta.',
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                    nav(contexto: context, active: 'desarrollador')
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
