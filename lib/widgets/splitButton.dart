import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class SplitButton extends StatelessWidget {
  final void Function() splitCheck;
  SplitButton({this.splitCheck});
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              'Split the Check',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              splitCheck();
            },
          )
        : FlatButton(
            child: Text(
              'Split the Check',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: () {
              splitCheck();
            },
          );
  }
}
