import 'package:disenios/src/pages/basico_page.dart';
import 'package:disenios/src/pages/botones_page.dart';
import 'package:disenios/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // cambiar el estilo del status bar del telefono
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black12
    ));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diseños',
        initialRoute: 'botones',
        routes: {
          'basico': (BuildContext context) => BasicoPage(),
          'scroll': (BuildContext context) => ScrollPage(),
          'botones': (BuildContext context) => BotonesPage()
        });
  }
}
