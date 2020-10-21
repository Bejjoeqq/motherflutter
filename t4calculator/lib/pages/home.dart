import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variabel
  TextEditingController angka1 = new TextEditingController();
  TextEditingController angka2 = new TextEditingController();
  int hasil = 0;

  //fungsi
  tambah(){
    setState(() {
      hasil = int.parse(angka1.text) + int.parse(angka2.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextField(
              controller: angka1,
              decoration: InputDecoration(labelText: "Masukkan angka 1"),
            ),
            TextField(
              controller: angka2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Masukkan angka 2"),
            ),
            RaisedButton(
              onPressed: (){
                tambah();
              },
              child: Text("Tambah",style: TextStyle(color: Colors.white),),
              color: Colors.brown,
              ),
            Text(hasil.toString(),style: TextStyle(fontSize: 30.0),)
          ],
        ),
      ),
    );
  }
}