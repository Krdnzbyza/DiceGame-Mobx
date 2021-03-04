import 'package:flutter/material.dart';

enum DicePosition { left, right }

class DiceGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: const <Widget>[
                DiceButton(dicePositionSelected: DicePosition.left),
                DiceButton(dicePositionSelected: DicePosition.right),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Total',
                style: Theme.of(context).textTheme.headline6,
              ),
            )
          ],
        ),
      ));
}

class DiceButton extends StatelessWidget {
  const DiceButton({this.dicePositionSelected});
  final DicePosition dicePositionSelected;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('assets/images/dice4.png'),
        onPressed: () {},
        // onPressed :  diceCounter.roll ,
      ),
    );
  }
}
