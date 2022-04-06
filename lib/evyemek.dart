import 'package:flutter/material.dart';
import 'package:flutter_app/burger.dart';
import 'package:flutter_app/sepet.dart';

class EvYemek extends StatefulWidget {
  @override
  _EvYemekState createState() => _EvYemekState();
}

class _EvYemekState extends State<EvYemek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Hanedan Ev Yemekleri',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('YEMEKLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Mantı'),
              subtitle: Text("30.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Zeytinyağlı Yaprak Sarma'),
              subtitle: Text("25.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Karnıyarık'),
              subtitle: Text("25.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Pirinç Pilavı'),
              subtitle: Text("20.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Bulgur Pilavı'),
              subtitle: Text("17.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Mercimek Köftesi'),
              subtitle: Text("20.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Karnabahar'),
              subtitle: Text("15.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            Card(
              child: ListTile(
                title: Text('İÇECEKLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Ayran'),
              subtitle: Text("4.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Kola'),
              subtitle: Text("6.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Gazoz'),
              subtitle: Text("6.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Meyve Suyu'),
              subtitle: Text("5.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
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
