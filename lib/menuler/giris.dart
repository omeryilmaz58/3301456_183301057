import 'package:flutter/material.dart';
import 'package:mobil_app/GridView.dart';

class Giris extends StatefulWidget {
  const Giris({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GirisState createState() => _GirisState();
}

class _GirisState extends State<Giris> {
  // ignore: non_constant_identifier_names
  String? Sehirler;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/image/logo.png"),
        ),
        title: Text(
          'Yemek Kapıda',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.red[500],
              fontStyle: FontStyle.italic),
        ),
      ),
      body: const GridVieww(),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title: Text(
            "Yemek Kapıda",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.red[500]),
          )),
      body: const GridVieww(),
    ),
  ));
}
