import 'package:big_tip_app/screens/Services.dart';
import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/TopBar.dart';
import 'package:big_tip_app/screens/Calculator.dart';
import 'package:big_tip_app/widgets/CategorySelector.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: "Category of Service",
        icon: Icon(
          Icons.help,
          color: Colors.white,
        ),
        function: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Text(
                      'Please select the type of service that you have recieved.'),
                );
              });
        },
      ),
      body: Container(
        color: Colors.white60,
        child: CategorySelector(),
      ),
    );
  }
}
