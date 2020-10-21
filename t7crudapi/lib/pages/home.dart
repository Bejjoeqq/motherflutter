import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:t7crudapi/pages/detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var dataJson;

  //fungsi
  getData() async{
    http.Response hasil = await http.get("https://script.googleusercontent.com/macros/echo?user_content_key=U1ymynbOBM4X6tLJbMGuk_NflIldGduIolPW8KcarFuC52X0XbV4lKnsaFiod4X9_Y_ZD8YTMRCxiFEWAqN0plajAeCWx-32m5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnMd2phlDL6BDDXoCGh7bnYSS0JrnEw2ZQaj99Fm06pdortlb91KQoIJj4l5k5i-iftAQfThqBpo-&lib=M_EFpDIBMKuoHX2xrszyKjlJbs-81nsIf",
    headers: {"Accept" : "application/json"});

    setState(() {
      dataJson = json.decode(hasil.body);
      dataJson = dataJson["users"];
      print(dataJson);
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          FlatButton(
            onPressed: (){
              Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context)=> new Detail()));
            }, 
            child: Icon(Icons.add, color: Colors.white,)
            ),
          FlatButton(
            onPressed: (){
              getData();
            }, 
            child: Icon(Icons.refresh, color: Colors.white,)
            )
        ],
      ),
      body: ListView.builder(
        itemCount: dataJson==null ? 0 : dataJson.length,
        itemBuilder: (context, i){
          return Container(
            padding: EdgeInsets.all(2.0),
            child: Card(
              child: ListTile(
                title: Text(dataJson[i]["name"]),
                subtitle: Text(dataJson[i]["email"]),
                trailing: Text(dataJson[i]["address"]),
              ),
            ),
          );
        }
        )
    );
  }
}