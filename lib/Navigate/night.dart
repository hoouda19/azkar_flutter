import 'package:azkar1/dndecor.dart';
import 'package:flutter/material.dart';

class night extends StatefulWidget {
  @override
  _nightState createState() => _nightState();
}

class _nightState extends State<night> {
  @override
  Widget build(BuildContext context) {
    return dndecor(
      name: 'اذكار المساء',
      image: 'images/moon.png',
      zkar: '1',
    );
  }
}
