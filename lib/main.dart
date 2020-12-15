import 'package:flutter/material.dart';
import 'package:big_tip_app/screens/Services.dart';
import 'package:big_tip_app/screens/Categories.dart';

void main() {
  runApp(BigTip());
}

class BigTip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BigTip",
      home: Categories(),
      theme: ThemeData(
          primarySwatch: tangerine,
          accentColor: Colors.white,
          textTheme: TextTheme(
              bodyText1: TextStyle(fontSize: 30, color: tangerine),
              headline6: TextStyle(fontSize: 60, color: tangerine),
              headline5: TextStyle(fontSize: 35, color: Colors.white),
              headline4: TextStyle(fontSize: 45, color: Colors.white),
              headline3: TextStyle(fontSize: 45, color: tangerine),
              headline2: TextStyle(fontSize: 25, color: tangerine),
              headline1: TextStyle(
                  fontSize: 18,
                  color: tangerine,
                  fontWeight: FontWeight.bold))),
    );
  }
}

MaterialColor tangerine = MaterialColor(0xFFf7951d, color);
MaterialColor jetBlack = MaterialColor(0xFF0a0a0a, color);

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};
