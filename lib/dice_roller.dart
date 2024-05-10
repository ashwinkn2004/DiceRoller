/*STATEFULL WIDGET USED TO CHANGE THE STATE OF THE DICE WHILE ROLLING */

import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  String currentDice = "assets/image/dice-1.png";

  void _rollDice() {
    var diceNumber = Random().nextInt(6) + 1; // generated number form 1 to 6
    setState(() {
      /*switch(diceNumber){
        case 1:
        currentDice = "assets/image/dice-1.png";

        case 2:
        currentDice = "assets/image/dice-2.png";

        case 3:
        currentDice = "assets/image/dice-3.png";

        case 4:
        currentDice = "assets/image/dice-4.png";

        case 5:
        currentDice = "assets/image/dice-5.png";

        case 6:
        currentDice = "assets/image/dice-6.png";
      }*/
      currentDice = "assets/image/dice-$diceNumber.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(currentDice, width: 200),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: _rollDice,
          style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
          child: const Text(
            "Roll Dice",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
