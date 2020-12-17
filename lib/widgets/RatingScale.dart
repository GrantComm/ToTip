import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/RatingCircle.dart';
import 'package:big_tip_app/screens/Calculator.dart';
import 'package:big_tip_app/widgets/RatingSubmitButton.dart';

class RatingScale extends StatefulWidget {
  String service;
  String rating;
  RatingScale({@required this.service});
  @override
  _RatingScaleState createState() => _RatingScaleState();
}

class _RatingScaleState extends State<RatingScale> {
  var ratingTypes = ['Poor', 'Good', 'Perfect'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform(
          transform: Matrix4.translationValues(0, 100, 0),
          child: Container(
              height: 250,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: RatingCircle(ratingTypes[index]),
                    ),
                    onTap: () {
                      setState(() {
                        widget.rating = ratingTypes[index];
                      });
                    },
                  );
                },
              )),
        ),
        Transform(
            transform: Matrix4.translationValues(0.0, 100, 0),
            child: RatingSubmitButton(
              service: widget.service,
              rating: widget.rating,
            ))
      ],
    );
  }
}
