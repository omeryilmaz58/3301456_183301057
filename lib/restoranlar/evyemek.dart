import 'package:flutter/material.dart';
import 'package:mobil_app/sepet.dart';

class EvYemek extends StatefulWidget {
  const EvYemek({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EvYemekState createState() => _EvYemekState();
}

class _EvYemekState extends State<EvYemek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        title: Text('Hanedan Ev Yemekleri',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Card(
              child: ListTile(
                title: Text('YEMEKLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: const Text('Mantı'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Zeytinyağlı Yaprak Sarma'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Karnıyarık'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Pirinç Pilavı'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Bulgur Pilavı'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Mercimek Köftesi'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Karnabahar'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            const Card(
              child: ListTile(
                title: Text('İÇECEKLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: const Text('Ayran'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Kola'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Gazoz'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Meyve Suyu'),
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
