import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget"),),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Text("Hai"),
            TextField(decoration: InputDecoration(labelText: "Masukkan nama anda "),),
            Image.network("https://miro.medium.com/max/1924/1*I9KrlBSL9cZmpQU3T2nq-A.jpeg"),
            Image.asset("images/tess.png"),
            RaisedButton(
              onPressed: (){},
              child: Text("Raised Button", style: TextStyle(color: Colors.white),),
              // color: Colors.pink,
              ),
            FlatButton(
              onPressed: (){},
              child: Text("Flat Button", style: TextStyle(color: Colors.white),),
              color: Colors.pink,
              ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("List 1"),
              subtitle: Text("Deskripsi 1"),
              trailing: Icon(Icons.keyboard_arrow_right)
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text("List 2"),
                subtitle: Text("Deskripsi 2"),
                trailing: Icon(Icons.keyboard_arrow_right)
              ),
            ),
            Row(children: [
              Expanded(child: Card(
                child: Column(children: [
                  Image.network("https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg",height: 197.0,),
                  Text("White Shirt Denim Large",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),textAlign: TextAlign.center,),
                  Text("Rp. 250.000",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart,color: Colors.white,),
                          Text("Beli Sekarang",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      color: Colors.pink,
                      ),
                    ),
                ],),
              )),
              Expanded(child: Card(
                child: Column(children: [
                  Image.network("https://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Vertical/12.jpg"),
                  Text("White Shirt",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                  Text("Rp. 250.000",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      onPressed: (){},
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart,color: Colors.white,),
                          Text("Beli Sekarang",style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      color: Colors.pink,
                      ),
                    ),
                ],),
              )),
            ],)
          ],
        ),
      ),
    );
  }
}