import 'package:flutter/material.dart';

void main() => runApp(MyApp()); 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _lastName = "";
  String _FirstName = "";
  String _info = "";
  void showText(String text) {
    setState(() {
     _lastName = text; 
    });
  }
  void showFirst(String text) {
   setState(() {
    _FirstName = text; 
   });
  }
  void Register() {
    setState(() {
      _info = _FirstName + "  " + _lastName;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(  
          title: Text("TextField"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String text){
                  _FirstName = text;
                }
              ),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String text) {
                  _lastName = text;
                }
              ),
            ),
            // Text( _lastName, style: TextStyle(color: Colors.pink, fontSize: 10.0),),
            // Text( _FirstName, style: TextStyle(color: Colors.pink, fontSize: 10.0),),
            Container( 
              width: 300.0,
              padding: EdgeInsets.only(bottom: 30.0),
              child: RaisedButton(  
                onPressed: Register,
                child: Text("Register", style: TextStyle(color: Colors.white),),
                color: Colors.pink,
              ),
            ),
            Text("Last and First :" +_info,style: TextStyle(fontSize: 30.0,color: Colors.pink), ),
          ],
          ),
      ),
    );
  }
}
 