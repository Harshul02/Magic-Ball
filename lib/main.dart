import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent.shade200,
        title: Text('Ask Me Anything'),
      ),
      body: Center(child: Ball()),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber= 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          child: TextButton(
            onPressed: (){
              setState(() {
                ballNumber=Random().nextInt(5)+ 1;
              });

            },
            child: Expanded(
                child: Image.asset('images/ball$ballNumber.png')),
          ),
        )
        );
      
  }
}


