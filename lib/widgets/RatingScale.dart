import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/RatingCircle.dart';
import 'package:big_tip_app/screens/Calculator.dart';

class RatingScale extends StatefulWidget {
  String service;
  String rating;
  var ratingTypes = {
    'Poor': false,
    'Good': false,
    'Perfect': false,
  };
  RatingScale({@required this.service});
  @override
  _RatingScaleState createState() => _RatingScaleState();
}

class _RatingScaleState extends State<RatingScale> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform(
          transform: Matrix4.translationValues(0, 100, 0),
          child: Container(
              height: 250,
              child: ListView.builder(
                itemCount: widget.ratingTypes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
                      child: RatingCircle(
                        widget.ratingTypes.keys.elementAt(index),
                        widget.ratingTypes.values.elementAt(index),
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        widget.rating =
                            widget.ratingTypes.keys.elementAt(index);
                        if (widget.ratingTypes[widget.rating] == true) {
                          widget.ratingTypes
                              .update(widget.rating, (value) => false);
                        } else {
                          widget.ratingTypes
                              .update(widget.rating, (value) => true);
                          _submit(context);
                        }
                      });
                    },
                  );
                },
              )),
        ),
      ],
    );
  }

  _submit(BuildContext context) {
    if (widget.rating == null) {
      _showError(context);
    }
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Calculator(
              service: widget.service,
              rating: widget.rating,
            )));
  }

  _showError(BuildContext context) {
    showDialog(
        context: context,
        child: AlertDialog(
          content: Text('Please submit a rating'),
        ));
  }
}
