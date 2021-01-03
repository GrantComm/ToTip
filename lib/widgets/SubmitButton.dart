import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';
import 'package:big_tip_app/screens/Result.dart';
import 'package:big_tip_app/classes/Summary.dart';

class SubmitButton extends StatefulWidget {
  String service;
  String rating;
  double finalAmount;
  int numberOfPeople = 1;
  SubmitButton({@required this.service, this.rating, this.finalAmount});
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            color: Theme.of(context).primaryColor,
            child: Text(
              'Submit',
              style: Theme.of(context).textTheme.headline5,
            ),
            onPressed: () {
              submit();
            },
          )
        : FlatButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Text(
              'Submit',
              style: Theme.of(context).textTheme.headline5,
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              submit();
            },
          );
  }

  void submit() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Result(
            summary: Summary(widget.service, widget.finalAmount, widget.rating,
                widget.numberOfPeople))));
    return;
  }
}
