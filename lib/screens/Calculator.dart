import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/TopBar.dart';
import 'package:big_tip_app/screens/Home.dart';
import 'package:big_tip_app/classes/Transaction.dart';

class Calculator extends StatefulWidget {
  String service;
  Calculator({@required this.service});
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: "Cost",
        icon: Icon(
          Icons.cancel,
          color: Colors.white,
        ),
      ),
      body: Container(
        color: Colors.white60,
      ),
    );
  }

  navigate(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home()));
  }
}
