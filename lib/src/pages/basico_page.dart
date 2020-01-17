import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // cabecera
            _headerWidget(),

            // primer Widget
            _puntuacionWidget(),

            // segundo widget
            _accionesWidget(),

            // tercer Widget
            _textoWidget(),
            
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            'https://ichef.bbci.co.uk/wwfeatures/live/976_549/images/live/p0/7w/b9/p07wb9xk.jpg'),
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _puntuacionWidget() {
    //para alinear primero metemos el row en un container
    return SafeArea(
      // desplieaga de manera correcta la info, en un area visible o segura
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            // Para utilizar todo el ancho disponible y expandir los elementos dentro del container
            // utilizaremos el ExpandesWidget
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment
                    .start, //Para alinear a la izquiera en horizontal en un row
                children: <Widget>[
                  Text(
                    'Un rio con un cerro al final',
                    style: estiloTitulo,
                  ),
                  SizedBox(
                    height: 7.0,
                  ),
                  Text(
                    'Un Super paisaje',
                    style: estiloSubTitulo,
                  )
                ],
              ),
            ),

            Icon(
              Icons.star,
              color: Colors.red,
              size: 30.0,
            ),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _accionesWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _crearAccion('CALL', Icons.call),
        _crearAccion('ROUTE', Icons.near_me),
        _crearAccion('SHARE', Icons.share)
      ],
    );
  }

  Widget _crearAccion(String texto, IconData icon) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 15.0, color: Colors.blue),
        )
      ],
    );
  }

  Widget _textoWidget() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Ullamco magna incididunt ea consequat ea duis Lorem cillum aute reprehenderit ullamco tempor labore. Dolore est sunt laboris enim. Duis cillum ipsum est sunt amet consectetur occaecat laboris eiusmod minim est nulla veniam. Incididunt aliquip tempor pariatur mollit laborum aute velit consequat consectetur pariatur ut nisi do.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
