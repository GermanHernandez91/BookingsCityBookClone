import 'package:city_book_clone/screens/tab_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CityBookClone',
      theme: ThemeData(
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          subhead: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          caption: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
      home: TabScreen(),
    );
  }
}
