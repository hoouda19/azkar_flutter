import 'package:flutter/material.dart';
import '../../Views/mainscreen.dart';
import 'Styles.dart';

var boxdecoration = BoxDecoration(
  border: Border.all(width: 3, color: backgroundcolor(colorcounter)),
  borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(10),
    topRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    topLeft: Radius.circular(10),
  ),
);

// var buttonboxdecoration = BoxDecoration(
//   border: Border.all(color: backgroundcolor(colorcounter)),
//   // color: bbcolor,
//   borderRadius: BorderRadius.all(
//     Radius.circular(20),
//   ),
//   color: Colors.white,
//   boxShadow: [
//     BoxShadow(
//         color: backgroundcolor(colorcounter),
//         spreadRadius: 2,
//         blurRadius: 5,
//         offset: Offset(0, 2)),
//   ],
// );

var button2boxdecoration = BoxDecoration(
  boxShadow: [
    BoxShadow(
        color: Colors.grey.withOpacity(0.3),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 2)),
  ],
  color: Colors.white,
  borderRadius: BorderRadius.only(
    bottomLeft: Radius.circular(30),
    bottomRight: Radius.circular(30),
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
  ),
);
