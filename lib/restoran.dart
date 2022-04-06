import 'package:flutter/material.dart';
import 'package:flutter_app/pide.dart';
import 'package:flutter_app/pizza.dart';
import 'package:flutter_app/tatlici.dart';
import 'package:flutter_app/evyemek.dart';
import 'package:flutter_app/doner.dart';
import 'package:flutter_app/burger.dart';
import 'package:flutter_app/corba.dart';
import 'package:flutter_app/borek.dart';

class Yemek extends StatefulWidget {
  @override
  _YemekState createState() => _YemekState();
}

class _YemekState extends State<Yemek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue[100],
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
          ),
          title: Text('Yemek Kapıda',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
        ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Dönerci Usta'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Doner()));
                  },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Prince Burger'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Burger()));
                },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Jet Pizza'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Pizza()));
                  },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Ağa Pide'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Pide()));
                  },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Anadolu Çorbacısı'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Corba()));
                  },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Tatlıcı Paşa'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Tatli()));
                  },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Hanedan Ev Yemekleri'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EvYemek()));
                  },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Kral Börekçi'),
                trailing: IconButton(icon: Icon(Icons.arrow_forward_ios_rounded),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Borek()));
                  },),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
          ],
        ),
      ),
    );
  }
}
