import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/ServiceCard.dart';
import 'package:big_tip_app/classes/Transaction.dart';
import 'package:big_tip_app/screens/Calculator.dart';

class ServiceSelector extends StatefulWidget {
  String selectedCategory;
  ServiceSelector({@required this.selectedCategory});
  @override
  _ServiceSelectorState createState() => _ServiceSelectorState();
}

class _ServiceSelectorState extends State<ServiceSelector> {
  @override
  Widget build(BuildContext context) {
    var services = {
      'Food/Drink': [
        ['Bar', 'images/liquor.png'],
        ['Dining', 'images/cutlery.png']
      ],
      'Utilities': [
        ['Gas', 'images/gas.png']
      ],
      'Personal': [
        ['Barber Shop', 'images/barber.png'],
        ['Nail Salon', 'images/nail.png']
      ]
    };
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children:
            List.generate(services[widget.selectedCategory].length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  navigate(
                      context, services[widget.selectedCategory][index][0]);
                },
                child: ServiceCard(
                  title: services[widget.selectedCategory][index][0],
                  icon: services[widget.selectedCategory][index][1],
                )),
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
