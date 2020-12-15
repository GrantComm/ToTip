import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/TopBar.dart';
import 'package:big_tip_app/classes/Summary.dart';
import 'package:big_tip_app/widgets/ResultsList.dart';

class Result extends StatefulWidget {
  Summary summary;
  Result({@required this.summary});
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
          title: "Summary",
          icon: Icon(
            Icons.done,
            color: Colors.white,
          ),
        ),
        body: ResultsList(
          summary: widget.summary,
        ));
  }
}
