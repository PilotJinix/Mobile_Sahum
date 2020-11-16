import 'package:flutter/material.dart';

class Pagetwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title:Text ("Page Two"),
        // iconTheme: new IconThemeData(color: Colors.blue),
        actions: [
          IconButton(
            icon: Icon(
                Icons.notifications_none
            ),
          )
        ],
      ),
    );

  }

}