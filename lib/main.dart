import 'package:flutter/material.dart';

import 'package:mobilerush/pages/fontpage.dart';
import 'package:mobilerush/pages/home.dart';
import 'package:mobilerush/pages/project.dart';
import 'package:mobilerush/pages/termandconditon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "fontpage",
        routes: {
          "fontpage": (context) => fontpage(),
          "terms": (context) => termss(),
          "homepage": (context) => hoomepage(),
          "projectpage": (context) => project(),
        });
  }
}
