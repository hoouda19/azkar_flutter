import 'package:azkar1/values/Colors/color.dart';
import 'package:flutter/material.dart';

Color backgroundcolor(try1) {
  return try1 == 0
      ? AppColor = Color.fromARGB(255, 28, 249, 255)
      : try1 == 1
          ? AppColor = Colors.blue
          : try1 == 2
              ? AppColor = Colors.greenAccent
              : try1 == 3
                  ? AppColor = Colors.green
                  : try1 == 4
                      ? AppColor = Colors.purpleAccent
                      : try1 == 5
                          ? AppColor = Colors.pinkAccent
                          : try1 == 6
                              ? AppColor = Colors.pink
                              : try1 == 7
                                  ? AppColor = Colors.grey
                                  : AppColor = Colors.blueGrey;
}
