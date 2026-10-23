import 'package:flutter/material.dart';

class Flex2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -50, //10 dari bawah
                right: -50, //30 dari kanan, kalo -30 jadi kepotong karena pake sizedbox
                child: Container(//yang paling bawah jadi yang paling atas
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    color: Colors.blue,
                  ), 
                ),
              ),
              Container(//yang paling atas jadi yang paling bawah
                height: 300,
                width: 300,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}