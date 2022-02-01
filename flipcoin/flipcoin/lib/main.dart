
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const FlipCoin());
}

class FlipCoin extends StatefulWidget {
  const FlipCoin({Key? key}) : super(key: key);

  @override
  _FlipCoinState createState() => _FlipCoinState();
}

class _FlipCoinState extends State<FlipCoin> {
  int Coin_Number = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('FlipYourCoin'),
          centerTitle: true,

        ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Coin_Number==1?Center(child: Text('Head')):Center(child: Text('Tail')),
            Expanded(
              child: Center(child: Image.asset('assets/images/face_$Coin_Number.jpg')),
            ),
           RaisedButton (
                onPressed: (){
                  setState(() {
                     Coin_Number = Random().nextInt(2) + 1;
                  });
                  },
           child: Text('Click To Flip'),
            ),

          ],
        ),
      )
    );
  }
}
