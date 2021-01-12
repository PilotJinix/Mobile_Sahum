import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:suhamv1_app/Home.dart';
import 'package:suhamv1_app/PageTwo.dart';
import 'package:suhamv1_app/data.dart';
import 'package:percent_indicator/percent_indicator.dart';


class Detail extends StatefulWidget{
  @override
  _DetailState createState() => _DetailState();
}
class _DetailState extends State<Detail> {

  Widget gesergambar(){
    return Container(
      child: Swiper(
        itemCount: gambar.length,
        itemBuilder: (BuildContext context, int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage(gambar[index]),
              fit: BoxFit.cover,
            ),
          );
        },
        viewportFraction: 0.5,
        scale: 0.5,
        layout: SwiperLayout.DEFAULT ,
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kopi Loer"),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 20),
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Penawaran Saham",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    "Gambar usaha UKM",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.5),
                      fontWeight: FontWeight.w300
                    ),
                  )

                ],
              ),
            ),
            Container(
                height: 200,
                child:gesergambar()
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 20),
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Cafe and Resto",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      letterSpacing: 5,
                      color: Colors.blue
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "Kopi Loer Jaya",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1
                    ),
                  ),
                  Text(
                    "PT Kopi Loer Jaya",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            //Mulai Dari
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mulai Dari",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "Rp 1.500.000",
                          style: TextStyle(
                              color: Colors.green
                          ),
                        ),
                        SizedBox(height: 3,),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Target ",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300
                                ),
                              ),
                              Text(
                                "1.000.000.000",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pembagian Deviden",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          "3 Bulan",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              width: 250,
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 20,
                animation: true,
                lineHeight: 15,
                animationDuration: 3000,
                percent: 0.25,
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
            SizedBox(height: 12),
            GestureDetector(
              onTap: ()=> Navigator.push(context , MaterialPageRoute(builder: (context) => Pagetwo())),
              child: Container(
                margin: EdgeInsets.all(12),
                child: Center(
                  child: Text(
                    "Beli Saham",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3
                    ),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(85, 10, 85, 10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
