import 'package:flutter/material.dart';
import '../Values/Colors/color.dart';

class alertdialog extends StatelessWidget {
  alertdialog(String sah, String tafsial) {
    this.sah = sah;
    this.tafsial = tafsial;
  }
  String sah = "";
  String tafsial = "";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 20,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: AppColor, width: 3),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      title: Text(
        sah,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26),
      ),
      //backgroundColor: Colors.,
      content: Container(
        width: double.infinity,

        child: Container(
          width: 400,
          height: 200,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  tafsial,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 23),
                ),
              ],
            ),
          ),
        ), //here man
      ),
    );
  }
}
