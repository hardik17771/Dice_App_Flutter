import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('Dice Game',

            textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {


  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdie = 1;
  int rightdie=1;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(

            child: FlatButton(
              onPressed: (){
              setState((){
                leftdie = Random().nextInt(6) + 1;
              });
              },
              child: Image(
                image: AssetImage('images/dice$leftdie.png'),
              ),
            ),),
          Expanded(child:
          FlatButton(
            onPressed: (){
              setState((){
                rightdie = Random().nextInt(6) + 1;
              },);
            },
            child: Image(
              image: AssetImage('images/dice$rightdie.png'),
            ),
          ),),
        ],
      ),
    );
  }
  }


