import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int codinglevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('My ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 1.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/head.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Jim.Bai',
              style: TextStyle(
                color: Colors.amber[600],
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              'Current Coding Level',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              '$codinglevel',
              style: TextStyle(
                color: Colors.amber[600],
                fontSize: 28.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'baiyunpeng@yahoo.com',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            codinglevel += 1;
          });
        },
        child: Icon(Icons.add),
        elevation: 1.0,
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}
