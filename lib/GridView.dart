import 'package:flutter/material.dart';
import 'package:flutter_app/restoran.dart';

class GridVieww extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 3,
      padding: EdgeInsets.all(20.0),
      crossAxisSpacing: 15,
      mainAxisSpacing: 20,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red[100],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
            child: Text("İstanbul", textAlign: TextAlign.center)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[200],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
            child: Text("İzmir", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[300],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
            child: Text("Ankara", textAlign: TextAlign.center,)
          ),

        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue[100],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
            child: Text("Bursa", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue[200],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                   MaterialPageRoute(builder: (context) => Yemek()));
            },
            child: Text("Eskişehir", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.blue[300],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
            child: Text("Konya", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[100],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Çanakkale", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[200],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Antalya", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green[300],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Adana", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[100],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Sivas", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[200],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Sakarya", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[300],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Trabzon", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange[100],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Kocaeli", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange[200],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Tekirdağ", textAlign: TextAlign.center,)
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange[300],
          child: FlatButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Yemek()));
            },
              child: Text("Edirne", textAlign: TextAlign.center,)
          ),
        ),
      ],
    );
  }

}