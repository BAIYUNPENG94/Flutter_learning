import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shit!"),
        centerTitle: true,
      ),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber[400],
              child: Text("1"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.green[400],
              child: Text("2"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.redAccent[400],
              child: Text("3"),
            ),
          ),
        ], 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("You pressed me!");
        },
        child: Text("click!"),
      ),
    );
  }
}
