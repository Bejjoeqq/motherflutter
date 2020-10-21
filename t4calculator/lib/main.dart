import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t4calculator/pages/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Calculator",
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.brown,
        accentColor: Colors.red
        ),
    );
  }
}