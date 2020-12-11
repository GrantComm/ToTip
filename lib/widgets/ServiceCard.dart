import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  String title;
  String icon;
  String category;
  ServiceCard({this.title, this.icon, this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black,
              offset: Offset(1.0, 6.0),
              blurRadius: 30.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Transform(
            transform: Matrix4.translationValues(0.0, 15.0, 0.0),
            child: Text(title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2),
          ),
          Transform(
              transform: Matrix4.translationValues(0.0, 25.0, 0.0),
              child: Image(
                height: 90,
                image: AssetImage(icon),
              )),
          Transform(
            transform: Matrix4.translationValues(0.0, 45.0, 0.0),
            child: Text(category,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1),
          ),
        ],
      ),
    );
  }
}
