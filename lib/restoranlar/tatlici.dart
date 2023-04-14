import 'package:flutter/material.dart';
import 'package:mobil_app/sepet.dart';

class Tatli extends StatefulWidget {
  const Tatli({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TatliState createState() => _TatliState();
}

class _TatliState extends State<Tatli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        title: Text('Tatlıcı Paşa',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Card(
              child: ListTile(
                title: Text('TATLILAR',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: const Text('Waffle'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Profiterol'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Pasta'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Baklava'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Şekerpare'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Şöbiyet'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Sufle'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Sütlaç'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Supangle'),
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
              title: const Text('Limonata'),
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
