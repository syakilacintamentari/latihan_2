import 'package:flutter/material.dart';
//import 'package:latihan_2/pages/pertemuan_4/lat_widget.dart';
//import 'package:latihan_2/pages/pertemuan_5/layout_1.dart';
//import 'package:latihan_2/pages/pertemuan_6/flex_1.dart';
//import 'package:latihan_2/pages/pertemuan_6/flex_2.dart';
//import 'package:latihan_2/pages/pertemuan_6/flex_3.dart';
//import 'package:latihan_2/pages/pertemuan_6/flex_4.dart';
import 'package:latihan_2/pages/pertemuan_6/kantin_app.dart';  

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false, 
      home: KantinApp());
  }
}
 
void main(List<String> args) {
  runApp(MyApp());
}
