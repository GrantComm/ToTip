import 'package:big_tip_app/widgets/SubmitButton.dart';
import 'package:flutter/material.dart';

class KeyPad extends StatefulWidget {
  String service;
  String rating;
  String total = '0';
  KeyPad(this.service, this.rating);
  @override
  _KeyPadState createState() => _KeyPadState();
}

class _KeyPadState extends State<KeyPad> {
  var keys = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '.', '<'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              child: Center(
                child: Text(
                  '\$' + (widget.total),
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(keys.length, (index) {
              return FlatButton(
                onPressed: () {
                  update(index);
                },
                child: Text(
                  keys[index],
                  style: Theme.of(context).textTheme.headline2,
                ),
              );
            }),
          ),
          Transform(
              transform: Matrix4.translationValues(0.0, -50.0, 0.0),
              child: SubmitButton(
                service: widget.service,
                rating: widget.rating,
                finalAmount: double.parse(widget.total),
              ))
        ],
      ),
    );
  }

  void update(int index) {
    setState(() {
      if (widget.total == '0' && keys[index] != '<') {
        widget.total = keys[index];
        return;
      } else if (keys[index] == '<') {
        if (widget.total.length == 1) {
          widget.total = '0';
          return;
        }
        widget.total = widget.total.substring(0, widget.total.length - 1);
        return;
      }
      widget.total += keys[index];
    });
  }
}
