import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lightBlue[200],
        primaryColor: Colors.lightBlue[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.lightBlue[900],
        ),
      ),
      home: InputPage(),
    );
  }
}


