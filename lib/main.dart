import 'package:disenios/src/pages/basico_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Diseños',
        initialRoute: 'basico',
        routes: {'basico': (BuildContext context) => BasicoPage()});
  }
}
