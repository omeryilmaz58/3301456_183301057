import 'package:flutter/material.dart';
import 'package:flutter_app/restoran.dart';

class Sepet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        leading: CircleAvatar(
          backgroundImage: NetworkImage("https://cdn.create.vista.com/api/media/small/453961758/stock-vector-chef-study-vector-logo-design"),
        ),
        title: Text('Yemek Kapıda',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              child: Text("SEPET",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white),),
              padding: const EdgeInsets.all(32.0),
            ),
            Card(
              margin: EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: ListTile(
                title: Text('Sipariş Özeti',style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold)),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
          ],
        ),
      ),
      floatingActionButton : FloatingActionButton(
        onPressed: () {
          var alert = AlertDialog(
            title: Text("Siparişiniz Başarıyla Alınmıştır."),
            content: FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Yemek()));
              },
              color: Colors.black12,
              child: Text(
                'Geri Dön',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          );
          showDialog(context: context, builder: (BuildContext context)=>alert);
        },
        child: Icon(Icons.where_to_vote_sharp),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
  }

}