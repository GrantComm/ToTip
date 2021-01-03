import 'package:big_tip_app/classes/Summary.dart';
import 'package:big_tip_app/widgets/personCounter.dart';
import 'package:big_tip_app/widgets/splitButton.dart';
import 'package:flutter/material.dart';

class ResultsList extends StatefulWidget {
  Summary summary;
  ResultsList({this.summary});

  @override
  _ResultsListState createState() => _ResultsListState();
}

class _ResultsListState extends State<ResultsList> {
  int count = 1;
  bool showButton = false;
  bool multiple = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.summary.getService(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            widget.summary.getRating(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            widget.summary.getCost(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            widget.summary.getTipPercentage(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Divider(
            thickness: 5,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            widget.summary.getTipAmount(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            multiple
                ? widget.summary.getFinalSumMultiple()
                : widget.summary.getFinalSum(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          PersonCounter(
            updateCountUp: _updateCountUp,
            updateCountDown: _updateCountDown,
            showButton: showButton,
            numberOfPeople: count,
          ),
          Visibility(
            child: SplitButton(
              splitCheck: _splitCheck,
            ),
            visible: showButton,
          )
        ],
      ),
    );
  }

  _updateCountUp() {
    setState(() {
      count++;
      if (count >= 2) {
        showButton = true;
        return;
      } else if (count < 0) {
        count = 0;
        showButton = false;
        return;
      }
      showButton = false;
    });
  }

  _updateCountDown() {
    setState(() {
      count--;
      if (count >= 2) {
        showButton = true;
        return;
      } else if (count < 0) {
        count = 0;
        showButton = false;
        return;
      }
      showButton = false;
    });
  }

  _splitCheck() {
    setState(() {
      widget.summary.numberOfPeople = count;
      multiple = true;
    });
  }
}
