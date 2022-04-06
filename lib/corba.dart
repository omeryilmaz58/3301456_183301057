import 'package:flutter/material.dart';
import 'package:flutter_app/sepet.dart';

class Corba extends StatefulWidget {
  @override
  _CorbaState createState() => _CorbaState();
}

class _CorbaState extends State<Corba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Anadolu Çorbacısı',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('ÇORBALAR',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Mercimek Çobrası'),
              subtitle: Text("10.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Ezogelin Çorbası'),
              subtitle: Text("10.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Tarhana Çorbası'),
              subtitle: Text("12.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('İşkembe Çorbası'),
              subtitle: Text("15.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Kelle Paça Çorbası'),
              subtitle: Text("15.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Domates Çorbası'),
              subtitle: Text("8.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Analı Kızlı Çorbası'),
              subtitle: Text("10.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Yayla Çorbası'),
              subtitle: Text("9.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Mantar Çorbası'),
              subtitle: Text("10.00 TL"),
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
