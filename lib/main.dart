import 'package:flutter/material.dart';
import 'package:tarea1/secondpage.dart';
import 'package:tarea1/thirdpage.dart';

void main({String boton}) => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/",
      //onGenerateRoute: RouteGenerator.generateRoute,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tarea 1'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  //String _callBackParams;

  String boton;
  String tp2;

  HomePage({Key key, 
    this.boton,
    this.tp2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text("BIENVENIDOS", 
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontFamily: 'Pacifico'
            ), textAlign: TextAlign.center,
          ),
        ),
      new Image.asset('assets/tarea1.png'),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
         child: Text('Seleccione la acción a realizar:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal : 60, vertical: 30),
          child: MaterialButton(
            child: Text("Página 2", 
              style: TextStyle(color: Colors.white),
              ),
            color: Colors.blue,
            onPressed: (){
              _showAlertDialog(context);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal : 40),
          child: MaterialButton(
            child: Text("Página 3",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            onPressed: (){
                Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => ThirdPage())
              );
            },
          ),
        ),
      ],),
      Padding(
        padding: const EdgeInsets.symmetric(vertical : 10),
        child: Text('Pg.2 => ', 
          style: TextStyle(
            fontSize: 18),
          ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical : 20),
        child: Text('Pg.3 =>',
          style: TextStyle(
            fontSize: 18),
          )
      ),
      ],
    );  
  }

_showAlertDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          TextEditingController _textController = TextEditingController();

          return AlertDialog(
            title: Text("Ingrese Datos"),
            content: TextField(
              controller: _textController,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Ingrese palabra",
                hintText: "Palabra",
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                child: Text("Cancelar"),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text("Siguiente"),
                onPressed: () async {
                  Navigator.of(context).pop();
                  await Navigator.of(context)
                      .push(
                    MaterialPageRoute(
                      builder: (_) => SecondPage(
                        textoRecibido: _textController.text,
                      )
                    ),
                  ).then(
                    (response) {
                     // _callBackParams = response;
                    },
                  );
                },
              ),
            ],
          );
        });
  }
}