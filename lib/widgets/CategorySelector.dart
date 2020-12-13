import 'package:big_tip_app/screens/Services.dart';
import 'package:flutter/material.dart';
import 'package:big_tip_app/widgets/CategoryCard.dart';
import 'package:big_tip_app/classes/Transaction.dart';
import 'package:big_tip_app/screens/Calculator.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  @override
  Widget build(BuildContext context) {
    var categories = [
      ["Food/Drink", "images/food.png"],
      ["Utilities", "images/utility.png"],
      ["Personal", "images/barber.png"]
    ];
    return Container(
      child: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: () {
                    navigate(context, categories[index][0]);
                  },
                  child: CategoryCard(
                    title: categories[index][0],
                    icon: categories[index][1],
                  )),
            );
          }),
    );
  }

  navigate(BuildContext context, String category) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Services(
              category: category,
            )));
  }
}
