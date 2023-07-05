import 'dart:math';
import 'package:flutter/material.dart';

class Magic_Ball extends StatefulWidget {
  const Magic_Ball({Key? key}) : super(key: key);

  @override
  State<Magic_Ball> createState() => _Magic_BallState();
}

class _Magic_BallState extends State<Magic_Ball> {

  late int intValue;

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
      intValue = 1;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset('images/ball${intValue}.png'),
        ),
        onTap: (){
          intValue = Random().nextInt(4) + 1;
          print(intValue);
        },
      ),
    );
  }
}
