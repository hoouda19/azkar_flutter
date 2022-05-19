import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'Navigate/day.dart';
import 'Navigate/night.dart';
import 'Views/mainscreen.dart';
import 'Views/details.dart';

void main() {
  runApp(AzkarApp());
}

class AzkarApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AzkarAppState();
  }
}

class AzkarAppState extends State<AzkarApp> {
  //Alignment ali = Alignment.centerRight;
  void initState() {
    super.initState();
    // Wakelock.enable();
    //print("splish");
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        //  initialRoute: '/main',
        routes: {
          '/main': (context) => AzkarApp(),
          '/day': (context) => Day(),
          '/night': (context) => night(),
          '/details': (context) => details(),
        },
        //theme: ThemeData(fontFamily: 'Vibes'),
        home: home());
  }
}
