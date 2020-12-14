import 'package:flutter/material.dart';
import 'package:big_tip_app/screens/Result.dart';
import 'package:big_tip_app/classes/Summary.dart';

class SubmitButton extends StatefulWidget {
  String service;
  double finalAmount;
  SubmitButton({@required this.service, this.finalAmount});
  @override
  _SubmitButtonState createState() => _SubmitButtonState();
}

class _SubmitButtonState extends State<SubmitButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(
        'Submit',
        style: Theme.of(context).textTheme.headline4,
      ),
      color: Theme.of(context).primaryColor,
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                Result(summary: Summary(widget.service, widget.finalAmount))));
      },
    );
  }
}
