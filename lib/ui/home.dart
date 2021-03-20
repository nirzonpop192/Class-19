import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  _tebEmail() {
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
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () => {debugPrint("Home Press")}),
          IconButton(icon: Icon(Icons.email), onPressed: _tebEmail)
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessible_sharp),
        onPressed:()=>{
          debugPrint("Floaing")
        } ,
      ),
    ));
  }
}

/**/

/*body: Center(
child: Text(
"Hello world",
textDirection: TextDirection.ltr,
style: TextStyle(
fontSize: 27.5, color: Colors.red[700], fontFamily: 'Play-Bold'),
),
),*/
class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = SnackBar(
          content: Text("Hello again"),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: Container(
        child: Text("Next page",style: TextStyle(color: Colors.white),),
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
