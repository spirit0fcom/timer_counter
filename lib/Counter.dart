import 'package:flutter/material.dart';
import 'package:stepper_counter_swipe/stepper_counter_swipe.dart';

class Counter extends StatelessWidget {
  final String title = "Counter";
  final IconData icon = Icons.plus_one;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:  Container(
              padding: const EdgeInsets.all(8.0),
              child: StepperSwipe(
                initialValue:0,
                speedTransitionLimitCount: 3, //Trigger count for fast counting
                onChanged: (int value) => print('new value $value'),
                firstIncrementDuration: Duration(milliseconds: 250), //Unit time before fast counting
                secondIncrementDuration: Duration(milliseconds: 100), //Unit time during fast counting
                direction: Axis.horizontal,
                dragButtonColor: Colors.blueAccent,
                withNaturalNumbers: false,
              ),
            ),
      ),
    );
  }
}