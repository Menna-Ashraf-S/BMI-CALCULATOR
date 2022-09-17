import 'package:flutter/material.dart';
import 'package:flutter_pro/home.dart';
import 'package:flutter_pro/second.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // initialRoute: '/',
      // routes: <String,WidgetBuilder>{
      //   '/' :(context) => Home() ,
      //   '/second' :(context) => Second(),
      // },
    );
  }
}
	