import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t3widget/pages/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Widget",
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.pink,
        accentColor: Colors.orange,
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xFFff2ee5de))
        ),
    );
  }
}