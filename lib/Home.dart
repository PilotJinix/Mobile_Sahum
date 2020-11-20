import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:suhamv1_app/Details.dart';
import 'package:suhamv1_app/InformasiApp.dart';
import 'package:suhamv1_app/Pagetwo.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                        fontSize: 12,
                        fontWeight: FontWeight.w100
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Pagetwo())),
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Text(
                        "UKM PRALISTING",
                        style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 3
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(85, 10, 85, 10),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(height: 70,),
                  Container(
                    margin: EdgeInsets.only(right:180 ),
                    child: Text(
                      "Usaha Pra Listing",
                      style: TextStyle(fontWeight: FontWeight.w400,
                      fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 40,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 15, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 300,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.3),
                            )
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height:186 ,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                  image: DecorationImage(
                                    image: AssetImage("assets/umk2.jpg")
                                  )
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                        "UMKM Anti Corona",
                                      style: TextStyle(fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "Owner bisnis bisa submit usahanya Anda pilih sendiri bisnis mana yang akan melakukan pendanaan selanjutnya di Sahum.",
                                      style: TextStyle(fontSize: 10,letterSpacing: 0.5,fontWeight: FontWeight.w300),
                                    )
                                  ],
                                )
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 300,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                              )
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height:186 ,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage("assets/umk2.jpg")
                                    )
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "UMKM Anti Corona",
                                        style: TextStyle(fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "Owner bisnis bisa submit usahanya Anda pilih sendiri bisnis mana yang akan melakukan pendanaan selanjutnya di Sahum.",
                                        style: TextStyle(fontSize: 10,letterSpacing: 0.5,fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 300,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                              border: Border.all(
                                color: Colors.grey.withOpacity(0.3),
                              )
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height:186 ,
                                width: 250,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage("assets/umk2.jpg")
                                    )
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "UMKM Anti Corona",
                                        style: TextStyle(fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        "Owner bisnis bisa submit usahanya Anda pilih sendiri bisnis mana yang akan melakukan pendanaan selanjutnya di Sahum.",
                                        style: TextStyle(fontSize: 10,letterSpacing: 0.5,fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
                  Container(
                    margin: EdgeInsets.only(right:210 ),
                    child: Text(
                      "Pilih Bisnis ",
                      style: TextStyle(fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 40,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 15, right: 10) ,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        GestureDetector(
                          onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Detail())),
                          child: Container(
                            height: 330,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(1, 1),
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height:186 ,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage("assets/MOMN_picture1.jpg",),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Kopi Loer",
                                          style: TextStyle(fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "PT Kopi Loer Jaya",
                                          style: TextStyle(
                                              fontSize: 10,
                                              letterSpacing: 0.1,
                                              fontWeight: FontWeight.w200
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Minimal beli ",
                                                style: TextStyle(
                                                    fontSize: 10
                                                ),
                                              ),
                                              Text(
                                                "Rp 1.500.000",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 10
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 250,
                                          child: new LinearPercentIndicator(
                                            width: MediaQuery.of(context).size.width - 186,
                                            animation: true,
                                            lineHeight: 15,
                                            animationDuration: 1000,
                                            percent: 0.9,
                                            center: Text(
                                              "25.0%",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white
                                              ),
                                            ),
                                            linearStrokeCap: LinearStrokeCap.roundAll,
                                            progressColor: Colors.green,
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  "Total Saham\nRp 1.000.000.000",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Pembagian Hasil\n3 Bulan",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )

                                      ],
                                    )
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Pagetwo())),
                          child: Container(
                            height: 330,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(1, 1),
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height:186 ,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage("assets/MOMN_picture3.jpg",),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Kopi HariHari",
                                          style: TextStyle(fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "PT Coffe Hari",
                                          style: TextStyle(
                                              fontSize: 10,
                                              letterSpacing: 0.1,
                                              fontWeight: FontWeight.w200
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Minimal beli ",
                                                style: TextStyle(
                                                    fontSize: 10
                                                ),
                                              ),
                                              Text(
                                                "Rp 1.500.000",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 10
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 250,
                                          child: new LinearPercentIndicator(
                                            width: MediaQuery.of(context).size.width - 186,
                                            animation: true,
                                            lineHeight: 15,
                                            animationDuration: 3000,
                                            percent: 0.9,
                                            center: Text(
                                              "90.0%",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white
                                              ),
                                            ),
                                            linearStrokeCap: LinearStrokeCap.roundAll,
                                            progressColor: Colors.green,
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  "Total Saham\nRp 1.000.000.000",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Pembagian Hasil\n3 Bulan",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        GestureDetector(
                          onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Pagetwo())),
                          child: Container(
                            height: 330,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(1, 1),
                                  )
                                ]
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height:186 ,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                    image: DecorationImage(
                                        image: AssetImage("assets/MOMN_picture6.jpg",),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Pojok Bangka",
                                          style: TextStyle(fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "PT Coffe Sider",
                                          style: TextStyle(
                                              fontSize: 10,
                                              letterSpacing: 0.1,
                                              fontWeight: FontWeight.w200
                                          ),
                                        ),
                                        SizedBox(height: 10,),
                                        Container(
                                          child: Row(
                                            children: <Widget>[
                                              Text(
                                                "Minimal beli ",
                                                style: TextStyle(
                                                    fontSize: 10
                                                ),
                                              ),
                                              Text(
                                                "Rp 1.500.000",
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 10
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: 250,
                                          child: new LinearPercentIndicator(
                                            width: MediaQuery.of(context).size.width - 186,
                                            animation: true,
                                            lineHeight: 15,
                                            animationDuration: 3000,
                                            percent: 0.9,
                                            center: Text(
                                              "90.0%",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white
                                              ),
                                            ),
                                            linearStrokeCap: LinearStrokeCap.roundAll,
                                            progressColor: Colors.green,
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Container(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Container(
                                                child: Text(
                                                  "Total Saham\nRp 1.000.000.000",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Pembagian Hasil\n3 Bulan",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.w500
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )

                                      ],
                                    )
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 70,),
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