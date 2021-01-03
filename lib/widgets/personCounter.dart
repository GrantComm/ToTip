import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class PersonCounter extends StatelessWidget {
  final int numberOfPeople;
  bool showButton;
  final void Function() updateCountUp;
  final void Function() updateCountDown;
  PersonCounter(
      {Key key,
      this.updateCountUp,
      this.updateCountDown,
      this.showButton,
      this.numberOfPeople})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(155, 0, 0),
      child: Container(
        child: Row(
          children: [
            IconButton(
              color: Theme.of(context).primaryColor,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                updateCountDown();
              },
            ),
            Icon(Icons.person),
            Text(numberOfPeople.toString()),
            IconButton(
              color: Theme.of(context).primaryColor,
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                updateCountUp();
              },
            ),
          ],
        ),
      ),
    );
  }
}
