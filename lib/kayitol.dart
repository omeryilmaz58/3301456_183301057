import 'package:flutter/material.dart';

class KayitOl extends StatefulWidget {
  @override
  _KayitOlState createState() => _KayitOlState();
}

class _KayitOlState extends State<KayitOl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: const EdgeInsets.all(16.0),
              child: Text('KAYIT OL',
                style: TextStyle(fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
            Padding(padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-posta',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic)
                ),
                maxLines: 1,
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Şifre',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic)
                ),
                maxLines: 1,
              ),
            ),
            Padding(padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text('Kayıt Ol'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
