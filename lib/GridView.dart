import 'package:flutter/material.dart';
import 'package:mobil_app/menuler/restoran.dart';

class GridVieww extends StatelessWidget{
  const GridVieww({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 15,
      mainAxisSpacing: 20,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red[100],
          child: TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
            ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("İstanbul", textAlign: TextAlign.center)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[200],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("İzmir", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[300],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Ankara", textAlign: TextAlign.center,)
          ),

        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue[100],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Bursa", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue[200],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Eskişehir", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue[300],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Konya", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[100],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Çanakkale", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[200],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Antalya", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[300],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Adana", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[100],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Sivas", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[200],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Sakarya", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[300],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Trabzon", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange[100],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Kocaeli", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange[200],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Tekirdağ", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange[300],
          child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black45),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Yemek()));
              },
              child: const Text("Edirne", textAlign: TextAlign.center,)
          ),
        ),
      ],
    );
  }

}