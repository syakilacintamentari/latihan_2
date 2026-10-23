import 'package:flutter/material.dart';

final List<Map<String, dynamic>>pegawai = [
  {"nama":"Syakila", "kelas": "ASE-220001", "warna":Colors.red},
  {"nama":"Cinta", "kelas": "ASE-220001", "warna": Colors.yellow},
  {"nama":"Mentari", "kelas": "ASE-220001", "warna": Colors.green},
];
class Flex4 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pegawai.length, //banyaknya item yang muncul
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: pegawai[index]['warna'],
              ),
              child:Row(
                spacing: 10,
                children: [
                  CircleAvatar(child: Icon(Icons.person),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Nama Lengkap : ${pegawai[index]['nama']}"),
                      Text("Kelas : ${pegawai[index]['kelas']}"),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}