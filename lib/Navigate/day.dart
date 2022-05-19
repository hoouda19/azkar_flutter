import 'package:flutter/material.dart';
import '../dndecor.dart';

class Day extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DayState();
  }
}

class DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return dndecor(
      name: 'اذكار الصباح',
      image: 'images/sun2.png',
      zkar: '2',
    );
  }
}
