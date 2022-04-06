import 'package:flutter/material.dart';
import 'package:flutter_app/sepet.dart';

class Doner extends StatefulWidget {
  @override
  _DonerState createState() => _DonerState();
}

class _DonerState extends State<Doner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Dönerci Usta',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('DÖNERLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Ekmek Arası Tavuk Döner'),
              subtitle: Text("20.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Ekmek Arası Et Döner'),
              subtitle: Text("30.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Tavuk Dürüm'),
              subtitle: Text("22.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Çift Lavaşlı Tavuk Dürüm'),
              subtitle: Text("24.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Zurna Dürüm'),
              subtitle: Text("30.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Et Dürüm'),
              subtitle: Text("27.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            Card(
              child: ListTile(
                title: Text('KEBAPLAR',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: Text('Adana Kebap'),
              subtitle: Text("35.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Urfa Kebap'),
              subtitle: Text("35.00 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Cağ Kebabı'),
              subtitle: Text("32.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('İskender Kebap'),
              subtitle: Text("37.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Beyti Kebap'),
              subtitle: Text("37.50 TL"),
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
              title: Text('Şalgam Suyu'),
              subtitle: Text("5.50 TL"),
              trailing: IconButton(icon: Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: Text('Soğuk Çay'),
              subtitle: Text("5.50 TL"),
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
