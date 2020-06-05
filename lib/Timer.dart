import 'package:flutter/material.dart';
import 'package:flutter_timer/flutter_timer.dart';

class Timer extends StatelessWidget {
  final String title = "Timer";
  final IconData icon = Icons.av_timer;

  @override
  Widget build(BuildContext context) {
    bool running = false;
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TikTikTimer(
            initialDate: DateTime.now(),
            running: running,
            height: 20,
            width: 150,
            backgroundColor: Colors.white,
            timerTextStyle: TextStyle(color: Colors.black, fontSize: 20),
            borderRadius: 0,
            isRaised: false,
            tracetime: (time) {
              //print(time.getCurrentSecond);
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Text(
                  'Start',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  try {
                    setState(() {
                      running = true;
                    });
                  } on Exception {}
                },
              ),
              RaisedButton(
                child: Text(
                  'Stop',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    running = false;
                  });
                },
              )
            ],
          ),
        ],
      ),
    ));
  }
}
