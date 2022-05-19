import 'package:azkar1/Values/Styles/padding_margin.dart';
import 'package:flutter/material.dart';
import 'Data/data.dart';
import 'Values/Styles/Styles.dart';
import 'Views/mainscreen.dart';
import 'Widgets/Text.dart';
import 'Widgets/alartdialog.dart';
import 'Widgets/maintitle.dart';
import 'Services/azkarnumber.dart';
import 'values/Styles/decoration.dart';

class dndecor extends StatefulWidget {
  @override
  _dndecorState createState() => _dndecorState();

  dndecor({name = String, image = String, zkar = int}) {
    nam = name;
    imag = image;
    zka = zkar;
  }
}

int count = 5;
int indx = 0;
bool koya = true;
String nam = '', imag = '', zka = '';
//String gg = '';

Widget docziker(BuildContext ctx) {
  return Column(
    children: [
      Container(
        child: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(ctx).pop();
            azkarsnum = [3, 3, 3, 1, 3, 1, 1, 10, 3, 1, 1, 1, 100];
            azkarbnum = [3, 3, 3, 1, 3, 1, 1, 10, 3, 1, 1, 100];
          },
          color: Colors.white,
        ),
        alignment: Alignment.topRight,
      ),
      Container(
        height: 195,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: margin20,
              width: double.infinity,
              height: 135,
              decoration: button2boxdecoration,
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Image.asset(
                    imag,
                    height: 60,
                  ),
                  Text(nam,
                      style: TextStyle(
                        fontFamily: 'Vibes',
                        fontSize: 40,
                        // color: Colors.white,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

class _dndecorState extends State<dndecor> {
  @override
  Widget build(BuildContext context) {
    Widget ziker(
        {g = String,
        sah = String,
        ctx = BuildContext,
        tafsial = String,
        koya,
        f = VoidCallback,
        nu = int}) {
      var dio = alertdialog(sah, tafsial);

      return Container(
        child: Column(
          children: [
            TextButton(
              style: ButtonStyle(splashFactory: NoSplash.splashFactory),
              onPressed: f,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                width: double.infinity,
                //height:double.infinity,
                //  margin: ,
                child: Text(
                  g,
                  textAlign: TextAlign.center, //el azkar
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: fontsize, //////////////
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
                        zka == '2'
                            ? azkarsnum[nu].toString()
                            : azkarbnum[nu].toString(), ///////////////////
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        //textAlign: TextAlign.left,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz_rounded),
                      onPressed: () {
                        showDialog(
                          context: ctx,
                          builder: (_) => dio,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: backgroundcolor(colorcounter)),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            topLeft: Radius.circular(10),
          ),
        ),
        alignment: Alignment.center,
        padding:
            const EdgeInsets.only(bottom: 15, top: 15, right: 10, left: 10),
        margin:
            const EdgeInsets.only(left: 15, bottom: 7, top: 7, right: 15), //
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          mainbody(docziker(context), 243, () {}),
          //ليه اتنين متغير واحد كفايه تحت هنا
          if (zka == '2')
            for (int i = 0; i < azkarlength; i++)
              ziker(
                  g: azkars[i]["zikr"],
                  sah: azkars[i]["saha"],
                  ctx: context,
                  tafsial: azkars[i]["tafsil"],
                  koya: true,
                  f: () {
                    setState(() {
                      if (azkarsnum[i] > 0) azkarsnum[i]--;
                      // else {}
                    });
                  },
                  nu: i),
          if (zka == '1')
            for (int i = 0; i < azkarblength - 1; i++)
              ziker(
                  g: azkarb[i]["zikr"],
                  sah: azkarb[i]["saha"],
                  ctx: context,
                  tafsial: azkarb[i]["tafsil"],
                  koya: true,
                  f: () {
                    setState(() {
                      if (azkarbnum[i] > 0) azkarbnum[i]--;
                      // else {}
                    });
                  },
                  nu: i),
        ],
      ),
    );
  }
}
