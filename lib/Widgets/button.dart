import 'package:flutter/material.dart';
import '../Values/Styles/Styles.dart';
import '../Views/mainscreen.dart';

class azkarbutton extends StatelessWidget {
  final String image, text;
  final String rou;
  azkarbutton({required this.image, required this.text, required this.rou}) {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      //splashFactory: NoSplash.splashFactory,  // notwork
      onTap: () {
        Navigator.of(context).pushNamed(rou);
      },
      child: Container(
          width: 300,
          // height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: backgroundcolor(colorcounter)),
            // color: bbcolor,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: backgroundcolor(colorcounter),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2)),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 20),
              Image.asset(
                image,
                height: 60,
              ),
              SizedBox(
                width: 60,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Vibes',
                ),
              )
            ],
          )),
    );
  }
}
