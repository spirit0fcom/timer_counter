import 'package:flutter/material.dart';

class Plot extends StatelessWidget {
  final String title = "Chart";
  final IconData icon = Icons.insert_chart;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Plot'),
      ),
    );
  }
}