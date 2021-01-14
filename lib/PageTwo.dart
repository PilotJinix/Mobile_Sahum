
import 'dart:math' as mathdart;
import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart' as mb;
import 'package:geolocator/geolocator.dart' as geo;

class Pagetwo extends StatefulWidget{
  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  var token = 'pk.eyJ1IjoicGlsb3RqaW5peCIsImEiOiJja2p2c2Q0N24wODFqMndtbHlod2NvNnI0In0.TueBgQ2_KUtH4mnlVH8gyQ';

  mb.MapboxMapController mapController;
  mb.LatLng gpsLoc;
  mb.Circle curPosCircle;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title:Text ("MAPS"),
        // iconTheme: new IconThemeData(color: Colors.blue),
      ),
      body: Center(
        child: Column(
          children: [
            buildMap(),
            // buildBtnBottomRow(),
          ],
        ),
      ),
    );
  }

  Widget buildMap() {
    return Container(
      height: MediaQuery.of(context).size.height-81,
      child: mb.MapboxMap(
        accessToken: token,
        styleString: 'mapbox://styles/mapbox/streets-v11',
        initialCameraPosition: new mb.CameraPosition(
          target: mb.LatLng(-7.798804, 110.327649),
          zoom: 15,
        ),

        onMapCreated: mapCreated,
        onMapClick: mapClicked,
      ),
    );
  }

  void mapClicked(mathdart.Point<double> point, mb.LatLng latlng) {
    print('lat lng clicked: ${latlng.latitude}, ${latlng.longitude}');
    if (mapController != null) {
      mapController.addCircle(
        new mb.CircleOptions(
          circleRadius: 8,
          circleColor: 'red',
          circleOpacity: 1,
          geometry: latlng,
          draggable: false,
        ),
      );
    }
  }

  void mapCreated(mb.MapboxMapController controller) {
    print("Ini controller ${controller}");
    print("Ini controller ${mb.MapboxMapController}");
    mapController = controller;
    print('map created');

    var lokasi = mb.LatLng(-7.798804, 110.327649);
    print('lat lng clicked: ${lokasi.latitude}, ${lokasi.longitude}');
    mapController.addCircle(new mb.CircleOptions(
      circleRadius: 8,
      circleColor: 'blue',
      circleOpacity: 1,
      geometry: lokasi,
      draggable: false,
    ));
  }

  Widget buildBtnBottomRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RaisedButton(
          child: Text('Re-center'),
          onPressed: () {
            var center = new mb.LatLng(-8.1766639, 113.6916075);
            var updatedLoc = mb.CameraUpdate.newLatLng(center);
            if (mapController != null) {
              mapController.animateCamera(updatedLoc);
            } else {
              print('map controller is null');
            }
          },
        ),
        RaisedButton(onPressed: () {}, child: Text('Btn2')),
      ],
    );
  }

}