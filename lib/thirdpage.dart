import 'package:flutter/material.dart';

import 'main.dart';
 
class ThirdPage extends StatelessWidget {
  String btn1 = "Boton 1";
  String btn2 = "Boton 2";
  String btn3 = "Boton 3";

  ThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Página 3"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: RaisedButton(
              color: Colors.white,
              child: Text(" (•◡•) /"),
              onPressed: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(
                      boton: btn1,
                    )
                  ),
                ).then(
                  (response){
                  //_callBackParams = response;
                }
                ); 
              }
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: RaisedButton(
              color: Colors.white,
              child: Text("ʕ•́ᴥ•̀ʔ"),
              onPressed: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(
                      boton: btn2,
                    )
                  ),
                ).then(
                  (response){
                  //_callBackParams = response;
                }
                ); 
              }
          ),
        ),
         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: RaisedButton(
              color: Colors.white,
              child: Text("٩(˘◡˘)۶"),
              onPressed: () async {
                Navigator.of(context).pop();
                await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => HomePage(
                      boton: btn3,
                    )
                  ),
                ).then(
                  (response){
                  //_callBackParams = response;
                }
                ); 
              }
          ),
         ),
      ],)
    ),
    );
  }
}