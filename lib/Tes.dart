import 'package:flutter/material.dart';

class Tes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.orangeAccent,
              height: 250,
            ),
            Positioned(
              top: 195,
              left: 50,
              child: Container(
                height: 50,
                width: 250,
                color: Colors.black38,
                child: Center(
                  child: Text(
                    "Stack & Positioned",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}