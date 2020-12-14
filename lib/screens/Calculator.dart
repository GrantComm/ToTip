import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/TopBar.dart';
import 'package:big_tip_app/screens/Services.dart';
import 'package:big_tip_app/classes/Transaction.dart';
import 'package:big_tip_app/widgets/KeyPad.dart';
import 'package:big_tip_app/widgets/SubmitButton.dart';

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
        child: Column(
          children: [
            KeyPad(),
            Transform(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: SubmitButton())
          ],
        ),
      ),
    );
  }
}
