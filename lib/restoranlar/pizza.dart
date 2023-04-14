import 'package:flutter/material.dart';
import 'package:mobil_app/sepet.dart';

class Pizza extends StatefulWidget {
  const Pizza({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PizzaState createState() => _PizzaState();
}

class _PizzaState extends State<Pizza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        title: Text('Jet Pizza',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Card(
              child: ListTile(
                title: Text('PİZZALAR',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              title: const Text('Karışık Pizza'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Tavuklu Pizza'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Sucuklu Pizza'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Sosisli Pizza'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Mantarlı Pizza'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Mevsim Etli Pizza'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Mevsim Sebzeli Pizza'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Ton Balıklı Pizza'),
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
              title: const Text('Ayran'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){},),
            ),
            ListTile(
              title: const Text('Soğuk Çay'),
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
