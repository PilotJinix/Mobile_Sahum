import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suhamv1_app/Awal.dart';
import 'package:suhamv1_app/models/authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
            value: Authentication()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SAHAM UMKM',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Awalan(),
      ),
    );
  }
}


