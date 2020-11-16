import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:suhamv1_app/InformasiApp.dart';
import 'package:suhamv1_app/Pagetwo.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            CarouselSlider(
                items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/umk.jpg"),
                        fit: BoxFit.cover
                      ),
                    ),
                  )
                ],
                options: CarouselOptions(
                  height: 150,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16/9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8
            )),
            Container(
              child: Column(
                children: [
                  SizedBox(height: 35),
                  Container(
                    child: Text(
                        "Jadilah Investor Bersama Kami",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                    ) ,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "Dengan Membantu UMKM Indonesia Dapat Membantu Ekonomi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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