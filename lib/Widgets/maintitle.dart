import 'package:flutter/material.dart';

import '../values/Colors/color.dart';

Widget mainbody(Widget wi, double high, Function()? f) {
  return InkWell(
    onTap: f,
    child: Container(
      alignment: Alignment.center,
      child: wi,
      width: double.infinity,
      //margin: EdgeInsets.only(left: 5,right: 5),
      height: high,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 2)),
        ],
        color: AppColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    ),
  );
}
