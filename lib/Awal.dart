import 'package:flutter/material.dart';
import 'dart:async';
import 'package:suhamv1_app/Home.dart';
import 'package:suhamv1_app/login.dart';

class Awalan extends StatefulWidget{

  _Awalan createState() => _Awalan();
}

class _Awalan extends State<Awalan>{
  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 4);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),

      );
    });
  }

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Icon(
              Icons.account_balance_wallet,
              size: 90.0,
              color: Colors.white,
            ),

            SizedBox(height: 24.0,),

            Text("SAHAM UMKM",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

}

