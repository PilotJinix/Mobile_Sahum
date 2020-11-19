import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:suhamv1_app/data.dart';


class Detail extends StatefulWidget{
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  Widget gesergambar(){
    return Container(
      child: Swiper(
        itemWidth: 300,
        itemHeight: 300,
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
        viewportFraction: 0.8,
        scale: 0.5,
        layout: SwiperLayout.STACK ,
      ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kopi Loer"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            child:gesergambar()
          ),

        ],
      ),
    );
  }
}
