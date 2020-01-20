import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  const BotonesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigatorBar(context),
    );
  }

  Widget _fondoApp() {
    // Dividiremos el fondo en dos partes
    // 1. el gradiente del fondo lila
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ])),
    );

    // 2. gradiente caja rosada
    final cajaRosada = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(
                begin: FractionalOffset(0.0, 0.6),
                end: FractionalOffset(0.0, 1.0),
                colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 1.0),
                ])),
      ),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -100, child: cajaRosada)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Clasified Transaction', style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0),
            Text('Clasified this transaction into particular catategory', style: TextStyle(color: Colors.white, fontSize: 17.0,),),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigatorBar(BuildContext context) {

    // para personalizar solo el tema del bootom bar
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )


      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            title: Container()
          )
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.red, Icons.call, 'Proccess'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.green, Icons.border_all, 'Aplications'),
            _crearBotonRedondeado(Colors.pinkAccent, Icons.border_all, 'Conditions'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueGrey, Icons.border_all, 'Novedades'),
            _crearBotonRedondeado(Colors.grey, Icons.border_all, 'Generalidades'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.indigoAccent, Icons.border_all, 'Ventas'),
            _crearBotonRedondeado(Colors.lime, Icons.border_all, 'Productos'),
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return BackdropFilter(
      filter: ImageFilter.blur(),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(11.0),
        decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(height: 5.0,),
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(icono, color: Colors.white, size: 30.0,),
            ),
            Text(texto, style: TextStyle(color: color),),
            SizedBox(height: 5.0,)
          ],
        ),
      ),
    );
  }
}
