import 'package:flutter/material.dart';

class KeyPad extends StatefulWidget {
  @override
  _KeyPadState createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  var keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.', '<'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        children: List.generate(keys.length, (index) {
          return FlatButton(
            onPressed: () {
              print('Do Something');
            },
            child: Text(
              keys[index],
              style: Theme.of(context).textTheme.headline2,
            ),
          );
        }),
      ),
    );
  }
}
