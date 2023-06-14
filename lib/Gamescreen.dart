import 'dart:math';

import 'package:flutter/material.dart';


class Gamescreen extends StatefulWidget {
  const Gamescreen({super.key});

  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),

    body: Center(
      child: Column(
        children: [
          Text('Dice Roller'),

          SizedBox(
            height: 200,
            width: 200,
            child: Image.network('https://raw.githubusercontent.com/bishworajpoudelofficial/flutter_dice_roller/master/assets/$diceNumber.png'),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: (){
            changeDice();
          },
          style: ElevatedButton.styleFrom(),
          child: Text('Roll the Dice', 
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
          )
        ],
      ),
    ),
    );

  }

  int diceNumber=1;
  void changeDice(){
    Random random = new Random();
    setState(() {
      
      diceNumber = random.nextInt(6)+1;
    }); 
  }
}