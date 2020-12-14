import 'package:flutter/material.dart';

class TotalDisplay extends StatefulWidget {
  String total;
  TotalDisplay(@required this.total);
  @override
  _TotalDisplayState createState() => _TotalDisplayState();
}

class _TotalDisplayState extends State<TotalDisplay> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
        child: Center(
          child: Text(
            '\$' + widget.total,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
    );
  }
}
