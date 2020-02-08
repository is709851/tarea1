import 'dart:math';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: SecondPage(
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final String textoRecibido;
  Random rnd;

  SecondPage({Key key, this.textoRecibido}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [
          Colors.lightBlue[800],
          Colors.lightBlue[600],
          Colors.lightBlue[400],
          Colors.lightBlue[200]
        ],
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Pantalla 2"),
      ),
      body: Center(
        child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('Genere número random', 
            style: TextStyle(
              color: Colors.purple,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          Text('$rnd',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: MaterialButton(
              color: Colors.white,
              child: Text("Generar"),
              onPressed: (){
                rnd = new Random(200);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: MaterialButton(
              child: Text("Guardar"),
              color: Colors.white,
              onPressed: (){
                //tp2: textoRecibido;
              },)
          ),
        ],
        ),
      ),
      ),
    );
  }
}