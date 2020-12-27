import 'package:flutter/material.dart';
import 'package:navegacao/SecondaryScreen.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/secondary" : (context) => SecondaryScreen(),
    },
    home: MainScreen(),
  ));
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Ir para a segunda tela"),
              padding: EdgeInsets.all(15),
              onPressed: (){
                Navigator.pushNamed(context, "/secondary");
              },
            )
          ],
        ),
      ),
    );
  }
}


