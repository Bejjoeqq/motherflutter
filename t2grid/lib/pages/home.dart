import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Test"),),
      body: Container(
        child: ListView(
          children: [
            Text("Text 1"),
            Column(
              children: [
                Text("Kolom 1"),
                Text("Kolom 2")
              ],
            ),
            Row(
              children: [
                Text("Baris 1"),
                Text("Baris 2")
              ],
            ),
            Row(
              children: [
                Expanded(child: Text("Baris 1")),
                Text("Baris 2")
              ],
            )
          ],
        ),
      ),
    );
  }
}