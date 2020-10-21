import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:t7crudapi/pages/home.dart';

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  TextEditingController name = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController email = new TextEditingController();
  var dataJson;

  postData(){
    var jsons = {
      "name" : name.text,
      "address" : address.text,
      "email" : email.text,
    };
    dataJson = json.encode(jsons);
    // print(dataJson);

    http.post("https://script.google.com/macros/s/AKfycbyb7fjSjSdviltbeDkGCaqzVdUbayoTBToPy5yItN3BKrcPI8J-/exec",
    body: dataJson).then((response){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (BuildContext context)=> new Home()));
    }).catchError((error){
      print("ERROR");
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: ListView(
        children:<Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(labelText: "Nama"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              controller: address,
              decoration: InputDecoration(labelText: "Alamat"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(labelText: "Email"),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5.0),
            child: RaisedButton(
              onPressed: (){
                postData();
              },
              color: Colors.orange, 
              child: Text("Simpan Data"),
              ),
          )
        ],
      ),
    );
  }
}