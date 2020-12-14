import 'package:flutter/material.dart';

class SubmitButton extends StatefulWidget {
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
        print('Submit Data');
      },
    );
  }
}
