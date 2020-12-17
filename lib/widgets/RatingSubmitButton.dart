import 'package:flutter/material.dart';
import 'package:big_tip_app/screens/Calculator.dart';

class RatingSubmitButton extends StatefulWidget {
  String rating;
  String service;
  RatingSubmitButton({@required this.rating, this.service});
  @override
  _RatingSubmitButtonState createState() => _RatingSubmitButtonState();
}

class _RatingSubmitButtonState extends State<RatingSubmitButton> {
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
        _submit(context);
      },
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
