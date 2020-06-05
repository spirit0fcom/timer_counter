import 'package:flutter/material.dart';
import 'package:flutter_timer/flutter_timer.dart';
import 'package:stepper_counter_swipe/stepper_counter_swipe.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import './Counter.dart';
import './Timer.dart';
import './Plot.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time and Count',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(length: 3, child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//class _MyHomePageState extends State<MyHomePage> {
//  bool running = false;
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          "Time and Count"
//        ),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            TikTikTimer(
//              initialDate: DateTime.now(),
//              running: running,
//              height: 20,
//              width: 150,
//              backgroundColor: Colors.white,
//              timerTextStyle: TextStyle(color: Colors.black, fontSize: 20),
//              borderRadius: 0,
//              isRaised: false,
//              tracetime: (time) {
//                //print(time.getCurrentSecond);
//              },
//            ),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: <Widget>[
//                RaisedButton(
//                  child: Text(
//                    'Start',
//                    style: TextStyle(color: Colors.white),
//                  ),
//                  color: Colors.green,
//                  onPressed: () {
//                    try {
//                      if (running == false)
//                        setState(() {
//                          running = true;
//                        });
//                    } on Exception {}
//                  },
//                ),
//                RaisedButton(
//                  child: Text(
//                    'Stop',
//                    style: TextStyle(color: Colors.white),
//                  ),
//                  color: Colors.red,
//                  onPressed: () {
//                    if (running == true)
//                      setState(() {
//                        running = false;
//                      });
//                  },
//                )
//              ],
//            ),
//            Container(
//              padding: const EdgeInsets.all(8.0),
//              child: StepperSwipe(
//                initialValue:0,
//                speedTransitionLimitCount: 3, //Trigger count for fast counting
//                onChanged: (int value) => print('new value $value'),
//                firstIncrementDuration: Duration(milliseconds: 250), //Unit time before fast counting
//                secondIncrementDuration: Duration(milliseconds: 100), //Unit time during fast counting
//                direction: Axis.horizontal,
//                dragButtonColor: Colors.blueAccent,
//                withNaturalNumbers: false,
//              ),
//            ),
//
//          ],
//        ),
//      ),
//    );
//  }
//}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time and Count"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Counter().icon),
              text: Counter().title),
            Tab(icon: Icon(Timer().icon),
                text: Timer().title),
            Tab(icon: Icon(Plot().icon),
                text: Plot().title)
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Counter(),
          Timer(),
          Plot()
        ],
      ),
    );
  }
}

