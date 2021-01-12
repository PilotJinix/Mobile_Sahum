import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlideController extends StatelessWidget{
  final String judul;
  final String deskripsi;
  final String gambar;

  SlideController({this.judul, this.deskripsi, this.gambar});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            gambar,
            width: width* 0.6,
          ),
          SizedBox(height: 60,),
          Text(
            judul,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              deskripsi,
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 14,
                letterSpacing: 0.7,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 60,)
        ],
      ),
    );
  }
}