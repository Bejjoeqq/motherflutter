import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  Detail ({this.data,this.dataStr});
  final int data;
  final String dataStr;
  // final int data2;
  // final int data3;
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil"),
      ),
      body:ListView(
        children: [
          Text(widget.dataStr),
          Text(widget.data.toString()),
        ],
      )
    );
  }
}