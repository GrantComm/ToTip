import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/ServiceCard.dart';
import 'package:big_tip_app/classes/Transaction.dart';
import 'package:big_tip_app/screens/Calculator.dart';

class ServiceSelector extends StatefulWidget {
  @override
  _ServiceSelectorState createState() => _ServiceSelectorState();
}

class _ServiceSelectorState extends State<ServiceSelector> {
  @override
  Widget build(BuildContext context) {
    var sections = [
      ['Dining', 'images/cutlery.png', 'Food/Drink'],
      ['Gas', 'images/gas.png', 'Utilities'],
      ['Bar', 'images/liquor.png', 'Food/Drink'],
      ['Nail Salon', 'images/nail.png', 'Personal Services'],
      ['Barber Shop', 'images/barber.png', 'Personal Services'],
      //['The Team', Icons.people],
    ];
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(5, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  navigate(context, sections[index][0]);
                },
                child: ServiceCard(
                    title: sections[index][0],
                    icon: sections[index][1],
                    category: sections[index][2])),
          );
        }),
      ),
    );
  }

  navigate(BuildContext context, String service) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Calculator(
              service: service,
            )));
  }
}
