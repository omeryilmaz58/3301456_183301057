import 'package:flutter/material.dart';
import 'package:flutter_app/GridView.dart';

class Giris extends StatefulWidget {
  @override
  _GirisState createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  late String Sehirler;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Yemek Kapıda', style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.red[500],fontStyle: FontStyle.italic),),
      ),
      body: GridVieww(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text("Yemek Kapıda",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]
        ),
      )
    ),
      body: GridVieww(),
  ),
  ));
}
