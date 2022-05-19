import 'package:flutter/material.dart';
import '../Widgets/Text.dart';
import '../Widgets/maintitle.dart';
import '../dndecor.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../values/Styles/decoration.dart';

class details extends StatefulWidget {
  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  savepref1(fontsize) async {
    SharedPreferences prf = await SharedPreferences.getInstance();
    prf.setDouble("try2", fontsize);
    prf.setString("try3", nas);
    prf.setString("try4", zad);
  }

  getpref1() async {
    SharedPreferences prf = await SharedPreferences.getInstance();
    setState(() {
      fontsize = prf.getDouble("try2") ?? 25;
      nas = prf.getString("try3") ?? '0';
      zad = prf.getString("try4") ?? '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    getpref1();
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            mainbody(docziker(context), 243, () {}),
            Padding(
              padding: const EdgeInsets.only(right: 80, left: 80, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: fontsize == 15
                        ? null
                        : () {
                            setState(() {
                              fontsize -= 5;
                              savepref1(fontsize);
                              if (fontsize == 15) {
                                nas = '';
                              }
                              zad = '+';
                            });
                          },
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, left: 20, top: 8, bottom: 8),
                        child: Text(
                          nas,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'حجم الخط',
                    style: TextStyle(fontSize: 25),
                  ),
                  InkWell(
                    onTap: fontsize == 40
                        ? null
                        : () {
                            setState(() {
                              fontsize += 5;
                              savepref1(fontsize);
                              if (fontsize == 40) {
                                zad = '';
                              }
                              nas = '-';
                            });
                          },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 20, left: 20, top: 8, bottom: 8),
                        child: Text(
                          zad,
                          style: TextStyle(fontSize: 20),
                        ),
                        // decoration: BoxDecoration(
                        //     color: Colors.black,
                        //     borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  TextButton(
                    style: ButtonStyle(splashFactory: NoSplash.splashFactory),
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      width: double.infinity,
                      //height:double.infinity,
                      //  margin: ,
                      child: Text(
                        'اللهم بك أصبحنا وبك أمسينا وبك نحيا وبك نموت وإليك النُّشور',
                        textAlign: TextAlign.center, //el azkar
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontsize,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                    child: Container(
                      decoration: boxdecoration,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Text(
                              '1',
                              ///////////////////
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              //textAlign: TextAlign.left,
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.more_horiz_rounded),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              decoration: boxdecoration,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  bottom: 15, top: 15, right: 10, left: 10),
              margin: const EdgeInsets.only(
                  left: 15, bottom: 7, top: 7, right: 15), //
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'المصدر',
                style: TextStyle(fontSize: 40, fontFamily: 'Vibes'),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              child: txt,
              padding: EdgeInsets.all(20),
            ),
          ],
        ),
      ),
    );
  }
}
