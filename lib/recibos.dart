import 'package:flutter/material.dart';
import 'package:castillo/widgets/nav.dart';
import 'package:castillo/widgets/reciboWidget.dart';

class Recibos extends StatelessWidget {
  Color primario = Color(0xFF164C99);

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BBVA',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: primario,
          title: Text(
            'Recibos',
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
                        'En esta seccion encontraras todos los movimientos de tu tarjeta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Container(
                        width: double.infinity,
                        height: 600,
                        child: GridView(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            childAspectRatio: 1.5,
                          ),
                          children: [
                            recibo(importe: '239.00', motivo: 'McDonald\'s', fecha: '18/05/2022'),
                            recibo(importe: '349.00', motivo: 'Nike', fecha: '25/06/2022'),
                            recibo(importe: '200.00', motivo: 'McDonald\'s', fecha: '26/06/2022'),
                            recibo(importe: '245.00', motivo: 'Starbucks', fecha: '27/06/2022'),
                            recibo(importe: '100.00', motivo: 'AT&T', fecha: '28/06/2022'),
                            recibo(importe: '750.00', motivo: 'Walmart', fecha: '1/07/2022'),
                            recibo(importe: '80.00', motivo: 'McDonald\'s', fecha: '4/07/2022'),
                            recibo(importe: '320.00', motivo: 'Gym', fecha: '4/07/2022'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              nav(contexto: context, active: 'recibos')
            ],
          ),
        ),
      ),
    );
  }
}
