import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suhamv1_app/Home.dart';
import 'package:suhamv1_app/Touring.dart';

class HomeController extends StatefulWidget{
  @override
  _HomeControllerState createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {

  Future<bool> check() async {
    var variabelCheck = await SharedPreferences.getInstance();
    var check = variabelCheck.getBool('done');
    if (check == null) {
      check = false;
    }
    // print('sudah pernah tour? $check');
    return check;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: check(),
        builder: (ctx, AsyncSnapshot<bool> snapshot) {
          print('snapshot: ' + snapshot.toString());
          // jika proses future nya sudah selesai
          if (snapshot.connectionState == ConnectionState.done && snapshot.data == true) {
            print('sudah pernah tur, tampilkan home');
            return Home();
          } else {
            print('belum pernah tur, tampilkan tur dulu');
            return Touring();
          }
        },
      ),
    );
  }
}

