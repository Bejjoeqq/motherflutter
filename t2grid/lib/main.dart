import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t2grid/pages/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Grid",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}