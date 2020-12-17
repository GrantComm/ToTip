import 'package:big_tip_app/classes/Summary.dart';
import 'package:flutter/material.dart';

class ResultsList extends StatelessWidget {
  Summary summary;
  ResultsList({this.summary});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Service: ' + summary.service,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Rating: N/A',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Cost: \$' + summary.totalSum.toStringAsFixed(2),
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Percentage: N/A',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Location: ' + summary.location,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Divider(
            thickness: 5,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            'Total: N/A',
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
