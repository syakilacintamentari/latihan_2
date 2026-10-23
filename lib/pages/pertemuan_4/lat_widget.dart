import 'package:flutter/material.dart';

class LatWidget extends StatelessWidget{
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan aplikasi Flutter"),
          backgroundColor: Colors.pinkAccent,
          foregroundColor: Colors.white,
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment. end,
          children: [
             Text("Hallo, ini aplikasi flutter pertama aku",
             style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: Colors.pinkAccent,
              ),
              ),
              Text("Ini teks no 2"),
              SizedBox(height: 20),
              Text("Ini teks no 3"),
              Text("Ini teks no 4"),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomRight,
                    colors: [Colors.pinkAccent.shade100, Colors.cyan]
                  ),
                  border: BoxBorder.all(color: Colors.lightBlueAccent),
                  boxShadow: [BoxShadow(spreadRadius: 0.9, color: Colors.pinkAccent)],
                ),
                 child: Center(
                  child: Icon(Icons.qr_code_2, size: 100, color: const Color.fromARGB(255, 255, 255, 255)),
              ),
                ),
            ],
        ),
      );
    
  }
}