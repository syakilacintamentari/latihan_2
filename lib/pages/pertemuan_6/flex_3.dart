import 'package:flutter/material.dart';

class Flex3 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 200,
      child: ListView(
        clipBehavior: Clip.antiAlias,
        scrollDirection: Axis.vertical,
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(color: Colors.pink, width: 100,),
              Container(color: Colors.pinkAccent, width: 100,)
            ],
          ),
          Container(
            width: 300,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.orange,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.yellow,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.green,
          ),
          Container(
            width: 300,
            height: 300,
            color: Colors.blue,
          ),
          
        ],
      ),
    );
  }
}