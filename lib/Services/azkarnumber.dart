import 'package:azkar1/values/Colors/color.dart';
import 'package:flutter/material.dart';
import '../Data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';

//var numbert = SharedPreferences.getInstance();

int azkarlength = azkarsnum.length;
int azkarblength = azkarbnum.length;
int azkatcout = 2;

class azkarNum extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<azkarNum> {
  int num1 = 0;
  Widget aznum(String n, num1) {
    var txtmid = Container(
      padding: EdgeInsets.only(
        right: 15,
        left: 15,
      ),
      child: TextButton(
        //height: 2,
        //minWidth: 3,
        style: ButtonStyle(splashFactory: NoSplash.splashFactory),

        onPressed: () {
          setState(() {
            if (num1 == 0) {
              azkatcout = 1;
              azkarlength = 5;
              azkarblength = 5;
              getpref();
              savepref(0, 5, 5);
            } else if (num1 == 1) {
              azkatcout = 1;
              azkarlength = 9;
              azkarblength = 9;
              savepref(1, 9, 9);
              getpref();
            } else {
              azkatcout = 2;
              azkarlength = 13;
              azkarblength = 13;
              savepref(2, 13, 13);
              getpref();
            }
          });
        },
        child: Text(
          n,
          style: const TextStyle(
            fontFamily: 'Vibes',
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
    );

    return txtmid;
  }

  savepref(azkatcout, azkarblength, azkarlength) async {
    SharedPreferences prf = await SharedPreferences.getInstance();
    prf.setInt("key", azkatcout);
    prf.setInt("key1", azkarblength);
    prf.setInt("key2", azkarlength);
  }

  getpref() async {
    SharedPreferences prf = await SharedPreferences.getInstance();
    setState(() {
      azkatcout = prf.getInt("key") ?? 2;
      azkarlength = prf.getInt("key1") ?? 13;
      azkarblength = prf.getInt("key2") ?? 13;
    });
  }

  @override
  Widget build(BuildContext context) {
    getpref();

    return Container(
      width: 310,
      child: Stack(
        alignment: azkatcout == 0
            ? Alignment.centerRight
            : azkatcout == 1
                ? Alignment.center
                : Alignment.centerLeft,
        children: [
          Container(
            width: 300,
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(color: AppColor),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              aznum('كثير', 2),
              aznum("متوسط", 1),
              aznum("قـليل", 0),
            ],
          ),
          Container(
            width: 85,
            height: 51,
            //padding: EdgeInsets.only(left: 500),
            decoration: BoxDecoration(
              boxShadow: [
                // not done
                BoxShadow(
                    color: AppColor.withOpacity(.1),
                    spreadRadius: 2,
                    blurRadius: 30,
                    offset: Offset(0, 2)),
              ],
              border: Border.all(color: AppColor, width: 1.5),
              // color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
