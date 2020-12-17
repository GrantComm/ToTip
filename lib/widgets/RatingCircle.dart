import 'package:flutter/material.dart';

class RatingCircle extends StatelessWidget {
  String ratingType;
  RatingCircle(@required this.ratingType);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 125,
          width: 125,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              border: Border.all(color: Theme.of(context).primaryColor)),
        ),
        Text(
          ratingType,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }
}
