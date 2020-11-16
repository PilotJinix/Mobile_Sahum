import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:suhamv1_app/InformasiApp.dart';
import 'package:suhamv1_app/Pagetwo.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title:Image.asset("assets/logowhite.png",
          height: 99.0,
          width: 100,
        ),
        // iconTheme: new IconThemeData(color: Colors.blue),
        actions: [
          IconButton(
            icon: Icon(
                Icons.notifications_none
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.lightBlue,
        margin: EdgeInsets.symmetric(vertical: 200,horizontal: 100),
        padding: EdgeInsets.all(40),
        child: Text("AGUNGCUUU"),
      ),
      drawer: Drawer(
        child: ListView(
          children:<Widget> [
            UserAccountsDrawerHeader(
              accountName: Text("Muhammad Agung Santoso"),
              accountEmail: Text("agungsantoso557@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: Image.asset("assets/me.jpg").image,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    child: Text("M")
                )
              ],
            ),
            ListTile(
              leading: Builder(
                builder: (BuildContext){
                  return Icon(
                      Icons.home
                  );
                },
              ),
              title: Text("Beranda"),
            ),
            ListTile(
              leading: Builder(
                builder: (BuildContext){
                  return Icon(
                      Icons.announcement
                  );
                },
              ),
              title: Text("Page Two"),
              onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Pagetwo())),
            ),
            ListTile(
              leading: Builder(
                builder: (BuildContext){
                  return Icon(
                      Icons.announcement
                  );
                },
              ),
              title: Text("Page Two"),
              onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Pagetwo())),
            ),
            ListTile(
              leading: Builder(
                builder: (BuildContext){
                  return Icon(
                      Icons.announcement
                  );
                },
              ),
              title: Text("Page Two"),
              onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Pagetwo())),
            ),
            ListTile(
              leading: Builder(
                builder: (BuildContext){
                  return Icon(
                      Icons.announcement
                  );
                },
              ),
              title: Text("Informasi Aplikasi"),
              onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => InformasiApp())),
            ),
            ListTile(
              leading: Builder(
                builder: (BuildContext){
                  return Icon(
                      Icons.close
                  );
                },
              ),
              title: Text("Leave App"),
            )
          ],
        ),
      ),
    );
  }
}