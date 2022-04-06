import 'package:flutter/material.dart';
import 'package:flutter_app/sepet.dart';

class Tatli extends StatefulWidget {
  @override
  _TatliState createState() => _TatliState();
}

class _TatliState extends State<Tatli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Tatlıcı Paşa',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('TATLILAR',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Waffle'),
              subtitle: Text("27.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Profiterol'),
              subtitle: Text("20.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Pasta'),
              subtitle: Text("45.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Baklava'),
              subtitle: Text("50.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Şekerpare'),
              subtitle: Text("35.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Şöbiyet'),
              subtitle: Text("35.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Sufle'),
              subtitle: Text("20.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Sütlaç'),
              subtitle: Text("15.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Supangle'),
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
              title: Text('Limonata'),
              subtitle: Text("6.00 TL"),
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
