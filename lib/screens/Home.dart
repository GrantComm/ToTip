import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/TopBar.dart';
import 'package:big_tip_app/screens/Calculator.dart';
import 'package:big_tip_app/widgets/ServiceSelector.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          title: "Service Recieved",
          icon: Icon(
            Icons.help,
            color: Colors.white,
          )),
      body: Container(
        color: Colors.white60,
        child: ServiceSelector(),
      ),
    );
  }

  navigate(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Calculator()));
  }
}
