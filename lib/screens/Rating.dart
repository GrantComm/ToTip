import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/TopBar.dart';
import 'package:big_tip_app/widgets/RatingScale.dart';

class Rating extends StatefulWidget {
  String service;
  Rating({@required this.service});
  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Rating',
        icon: Icon(Icons.help),
        function: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: Text(
                      'Please submit a rating for the service that you have recieved.'),
                );
              });
        },
      ),
      body: Center(child: RatingScale(service: widget.service)),
    );
  }
}
