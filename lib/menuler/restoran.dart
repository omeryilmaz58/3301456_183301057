import 'package:flutter/material.dart';
import 'package:mobil_app/restoranlar/pide.dart';
import 'package:mobil_app/restoranlar/pizza.dart';
import 'package:mobil_app/restoranlar/tatlici.dart';
import 'package:mobil_app/restoranlar/evyemek.dart';
import 'package:mobil_app/restoranlar/doner.dart';
import 'package:mobil_app/restoranlar/burger.dart';
import 'package:mobil_app/restoranlar/corba.dart';
import 'package:mobil_app/restoranlar/borek.dart';

class Yemek extends StatefulWidget {
  const Yemek({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _YemekState createState() => _YemekState();
}

class _YemekState extends State<Yemek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue[100],
          leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/image/logo.png"),
          ),
          title: Text('Yemek Kapıda',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
        ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 10, thickness: 2,),
            ),
            GestureDetector(
              onLongPress: (){
                var alert = AlertDialog(
                  title: const Text("Tavuk ve et dönerlerimizle emrinize amadeyiz."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Dönerci Usta'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Doner()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
            GestureDetector(
              onDoubleTap: (){
                var alert = AlertDialog(
                  title: const Text("Enfes hamburgerlerimizle kendinizi ödüllendirin."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Prince Burger'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Burger()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
            GestureDetector(
              onTapUp: (TapUpDetails tapDetails){
                var alert = AlertDialog(
                  title: const Text("Jet hızında pizza için Jet Pizza'yı seçin."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Jet Pizza'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Pizza()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
            GestureDetector(
              onTapDown: (TapDownDetails tapDetails){
                var alert = AlertDialog(
                  title: const Text("Lezzetin doğru adresi."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Ağa Pide'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Pide()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
            GestureDetector(
              onTap: (){
                var alert = AlertDialog(
                  title: const Text("Anadolu'dan gelen lezzetlerin buluşma noktası."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Anadolu Çorbacısı'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Corba()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
            GestureDetector(
              onLongPress: (){
                var alert = AlertDialog(
                  title: const Text("Şekerin krallığını sunan tatlı adresi."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Tatlıcı Paşa'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Tatli()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
            GestureDetector(
              onLongPress: (){
                var alert = AlertDialog(
                  title: const Text("Lezzetin tahtına hükmeden bir damak şöleni."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Hanedan Ev Yemekleri'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const EvYemek()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
            GestureDetector(
              onLongPress: (){
                var alert = AlertDialog(
                  title: const Text("Kralların lezzeti, Kral Börekçi."),
                  content: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(
                      'Kapat',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
              child: Card(
                margin: const EdgeInsets.all(5),
                elevation: 20,
                color: Colors.blue[300],
                child: ListTile(
                  title: const Text('Kral Börekçi'),
                  trailing: IconButton(icon: const Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Borek()));
                    },),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20, thickness: 2,),
            ),
          ],
        ),
      ),
    );
  }
}
