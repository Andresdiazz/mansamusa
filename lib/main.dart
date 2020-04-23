import 'package:flutter/material.dart';
import 'package:homemansamusa/bachillerato/bottomNavigationBar.dart';
import 'package:homemansamusa/bachillerato/home_page.dart';

import 'selection_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: "Giil Sans MT",
          brightness: Brightness.light,
          primaryColor: Color(0xff002e62)
      ),
      home: SelectionPage(),
    );
  }
}