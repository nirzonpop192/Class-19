import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  _tebEmail(){
    debugPrint("Email button Pressed");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text(
          "Home page",
          style: TextStyle(
            fontSize: 23.5,
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.home), onPressed: () => { debugPrint("Home Press")}),
          IconButton(icon: Icon(Icons.email), onPressed: _tebEmail)
        ],
      ),
      body: Center(
        child: Text(
          "Hello world",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 27.5, color: Colors.red[700], fontFamily: 'Play-Bold'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
      ),
    ));
  }
}
