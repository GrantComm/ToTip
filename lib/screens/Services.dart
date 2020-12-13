import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/TopBar.dart';
import 'package:big_tip_app/screens/Calculator.dart';
import 'package:big_tip_app/widgets/ServiceSelector.dart';

class Services extends StatefulWidget {
  String category;
  Services({@required this.category});
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
          title: "Services",
          icon: Icon(
            Icons.help,
            color: Colors.white,
          )),
      body: Container(
        color: Colors.white60,
        child: ServiceSelector(
          selectedCategory: widget.category,
        ),
      ),
    );
  }

  navigate(BuildContext context, String service) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Calculator(
              service: service,
            )));
  }
}
