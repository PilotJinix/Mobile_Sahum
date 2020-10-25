import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build (BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("MOBILE SDGs 8"),
      ),
      body: Container(
        margin: EdgeInsets.all(63),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Muhammad Agung Santoso 182410103081"),
            Text("Meliatiya Arifviyana 182410103037"),
            Text("Alifia Afifah 182410103069")
          ],
        ),
      ),
    );
  }
}

