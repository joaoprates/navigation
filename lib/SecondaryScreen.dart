import 'package:flutter/material.dart';

class SecondaryScreen extends StatefulWidget {
  String valor;
  SecondaryScreen({this.valor});

  @override
  _SecondaryScreenState createState() => _SecondaryScreenState();
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[RaisedButton(
            child: Text("Ir para a primeira tela"),
            padding: EdgeInsets.all(15),
            onPressed: (){
              Navigator.pushNamed(context, "/");
            },
          )
          ],
        ),
      ),
    );
  }
}
