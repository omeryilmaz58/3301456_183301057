import 'package:flutter/material.dart';
import 'package:mobil_app/sepet.dart';

class Corba extends StatefulWidget {
  const Corba({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CorbaState createState() => _CorbaState();
}

class _CorbaState extends State<Corba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        title: Text('Anadolu Çorbacısı',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Card(
              child: ListTile(
                title: Text('ÇORBALAR',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: const Text('Mercimek Çobrası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Ezogelin Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Tarhana Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('İşkembe Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Kelle Paça Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Domates Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Analı Kızlı Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Yayla Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Mantar Çorbası'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            FloatingActionButton(
              splashColor: Colors.blueGrey,
              backgroundColor: Colors.grey,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Sepet()));
              },
              child: const Icon(Icons.add_shopping_cart),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
          ],
        ),
      ),
    );
  }
}
