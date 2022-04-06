import 'package:flutter/material.dart';
import 'package:flutter_app/sepet.dart';

class Burger extends StatefulWidget {
  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Prince Burger',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('HAMBURGERLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Tavuk Burger'),
              subtitle: Text("20.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Köfte Burger'),
              subtitle: Text("25.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Izgara Burger'),
              subtitle: Text("27.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Cheeseburger'),
              subtitle: Text("15.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            Card(
              child: ListTile(
                title: Text('PATATESLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Büyük Boy Patates'),
              subtitle: Text("7.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Orta Boy Patates'),
              subtitle: Text("4.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Küçük Boy Patates'),
              subtitle: Text("3.00 TL"),
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
              title: Text('Soğuk Çay'),
              subtitle: Text("5.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Meyve Suyu'),
              subtitle: Text("5.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Ayran'),
              subtitle: Text("4.00 TL"),
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
