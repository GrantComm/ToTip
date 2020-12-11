import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/ServiceCard.dart';

class ServiceSelector extends StatefulWidget {
  @override
  _ServiceSelectorState createState() => _ServiceSelectorState();
}

class _ServiceSelectorState extends State<ServiceSelector> {
  @override
  Widget build(BuildContext context) {
    var sections = [
      ['Dining', 'images/cutlery.png', 'Food/Drink'],
      //['Our Mission', Icons.public],
      //['Our Vision', Icons.lightbulb_outline],
      //['The Team', Icons.people],
    ];
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(1, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  print("Navigate to Next Section");
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
}
