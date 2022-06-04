import 'package:flutter/material.dart';

class nav extends StatelessWidget {
  nav({
    @required this.contexto,
    @required this.active,
  });

  final contexto;
  final active;

  Color primario = Color(0xFF164C99);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(contexto, '/inicio');
                },
                icon: Icon(Icons.home, color: active == 'inicio' ? primario : Colors.grey[600]),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(contexto, '/recibos');
                },
                icon: Icon(Icons.sticky_note_2, color: active == 'recibos' ? primario : Colors.grey[600]),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(contexto, '/clientes');
                },
                icon: Icon(Icons.supervisor_account, color: active == 'clientes' ? primario : Colors.grey[600]),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(contexto, '/empleados');
                },
                icon: Icon(Icons.cases, color: active == 'empleados' ? primario : Colors.grey[600]),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(contexto, '/desarrollador');
                },
                icon: Icon(Icons.developer_mode, color: active == 'desarrollador' ? primario : Colors.grey[600]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
