import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  var rolledNumber = 2;

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      rolledNumber = diceRoll;
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        Text(
          'El numero es: $rolledNumber',
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 50),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
