import 'package:flutter/material.dart';
import 'package:azkar1/values/Styles/Styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Widgets/Text.dart';
import '../Widgets/button.dart';
import '../Widgets/maintitle.dart';
import '../Services/azkarnumber.dart';
import '../dndecor.dart';

int colorcounter = 0;

class home extends StatefulWidget {
  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  savepref1(colorcounter) async {
    SharedPreferences prf = await SharedPreferences.getInstance();
    prf.setInt("colorcounter", colorcounter);
    prf.setDouble("try2", fontsize);
  }

  getpref1() async {
    SharedPreferences prf = await SharedPreferences.getInstance();
    setState(() {
      colorcounter = prf.getInt("colorcounter") ?? 0;
      fontsize = prf.getDouble("try2") ?? 25;
    });
  }

  @override
  Widget build(BuildContext context) {
    getpref1();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/details');
            imag = 'images/stars.png';
            nam = 'الاعدادات';
          },
          backgroundColor: backgroundcolor(colorcounter),
          child: const Icon(Icons.settings),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) => orientation == Orientation.portrait
              ? Column(
                  children: [
                    mainbody(azkartitle, 180, () {
                      setState(() {
                        colorcounter++;
                        if (colorcounter == 9) colorcounter = 0;
                        savepref1(colorcounter);
                      });
                    }),
                    const SizedBox(
                      height: 27,
                    ),
                    azkarNum(),
                    const SizedBox(height: 150),
                    azkarbutton(
                      image: 'images/moon.png',
                      text: 'اذكار المساء',
                      rou: '/night',
                    ),
                    const SizedBox(height: 40),
                    azkarbutton(
                      image: 'images/sun2.png',
                      text: "اذكار الصباح",
                      rou: '/day',
                    ),
                  ],
                )
              : Column(
                  children: [
                    mainbody(azkartitle, 140, () {
                      setState(() {
                        colorcounter++;
                        if (colorcounter == 9) colorcounter = 0;
                        savepref1(colorcounter);
                      });
                    }),
                    const SizedBox(
                      height: 27,
                    ),
                    azkarNum(),
                    const SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        azkarbutton(
                          image: 'images/moon.png',
                          text: 'اذكار المساء',
                          rou: '/night',
                        ),
                        const SizedBox(width: 40),
                        azkarbutton(
                          image: 'images/sun2.png',
                          text: "اذكار الصباح",
                          rou: '/day',
                        ),
                      ],
                    )
                  ],
                ),
        ));
  }
}
