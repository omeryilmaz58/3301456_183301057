import 'package:flutter/material.dart';
import 'package:mobil_app/sepet.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        title: Text('Prince Burger',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Card(
              child: ListTile(
                title: Text('HAMBURGERLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: const Text('Tavuk Burger'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Köfte Burger'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Izgara Burger'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Cheeseburger'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            const Card(
              child: ListTile(
                title: Text('PATATESLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: const Text('Büyük Boy Patates'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Orta Boy Patates'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Küçük Boy Patates'),
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
              title: const Text('Kola'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Gazoz'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Soğuk Çay'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Meyve Suyu'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Ayran'),
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
