import 'package:flutter/material.dart';
import 'package:flutter_app/sepet.dart';

class Pide extends StatefulWidget {
  @override
  _PideState createState() => _PideState();
}

class _PideState extends State<Pide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Ağa Pide',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Card(
                child: ListTile(
                  title: Text('PİDELER',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: Colors.red,height: 20,),
              ),

              ListTile(
                title: Text('Karışık Pide'),
                subtitle: Text("27.50 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Kıymalı Pide'),
                subtitle: Text("25.00 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Kaşarlı Pide'),
                subtitle: Text("22.50 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Kuşbaşılı Pide'),
                subtitle: Text("25.00 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Patatesli Pide'),
                subtitle: Text("22.50 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              Card(
                child: ListTile(
                  title: Text('İÇECEKLER',style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Divider(color: Colors.red,height: 20,),
              ),
              ListTile(
                title: Text('Ayran'),
                subtitle: Text("4.00 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Kola'),
                subtitle: Text("6.50 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Gazoz'),
                subtitle: Text("6.50 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Soğuk Çay'),
                subtitle: Text("5.50 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              ListTile(
                title: Text('Şalgam Suyu'),
                subtitle: Text("5.50 TL"),
                trailing: IconButton(icon: Icon(Icons.add_circle_outline), onPressed: () {},),
              ),
              FloatingActionButton(
                splashColor: Colors.blueGrey,
                backgroundColor: Colors.grey,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sepet()));
                },
                child: Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
        ),
    );
  }
}
