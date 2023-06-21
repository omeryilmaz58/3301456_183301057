import 'package:flutter/material.dart';
import 'package:mobil_app/menuler/restoran.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Tatli extends StatefulWidget {
  const Tatli({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TatliState createState() => _TatliState();
}

class TatliItem {
  final String title;
  String subtitle;

  TatliItem({required this.title, required this.subtitle});
}

class _TatliState extends State<Tatli> {
  int fiyatYiyecek = 100;
  int fiyatIcecek = 50;

  List<TatliItem> tatliItems = [];

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
              leading: Image.asset("assets/image/waffle.png"),
              title: const Text('Waffle'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Waffle') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Waffle',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/profiterol.png"),
              title: const Text('Profiterol'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Profiterol') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Profiterol',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/pasta.png"),
              title: const Text('Pasta'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Pasta') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Pasta',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/baklava.png"),
              title: const Text('Baklava'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Baklava') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Baklava',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/sekerpare.png"),
              title: const Text('Şekerpare'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Şekerpare') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Şekerpare',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/sobiyet.png"),
              title: const Text('Şöbiyet'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Şöbiyet') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Şöbiyet',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/sufle.png"),
              title: const Text('Sufle'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Sufle') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Sufle',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/sutlac.png"),
              title: const Text('Sütlaç'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Sütlaç') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Sütlaç',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/supangle.png"),
              title: const Text('Supangle'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Supangle') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Supangle',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
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
              leading: Image.asset("assets/image/limonata.png"),
              title: const Text('Limonata'),
              subtitle: Text('$fiyatIcecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Limonata') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatIcecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Limonata',
                        subtitle: '$fiyatIcecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/meyve-suyu.png"),
              title: const Text('Meyve Suyu'),
              subtitle: Text('$fiyatIcecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in tatliItems) {
                    if (item.title == 'Meyve Suyu') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatIcecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    tatliItems.add(
                      TatliItem(
                        title: 'Meyve Suyu',
                        subtitle: '$fiyatIcecek',
                      ),
                    );
                  }
                });
              },),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            FloatingActionButton(
              splashColor: Colors.blueGrey,
              backgroundColor: Colors.grey,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sepet(items: tatliItems)));
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

class Sepet extends StatefulWidget {
  final List<TatliItem> items;

  const Sepet ({Key? key, required this.items}) : super(key: key);

  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> {

  int calculateTotalPrice(List<TatliItem> items) {
    int totalPrice = 0;
    for(var item in items){
      totalPrice += int.parse(item.subtitle);
    }
    return totalPrice;
  }

  @override
  Widget build(BuildContext context) {
    final totalPrice = calculateTotalPrice(widget.items);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/image/logo.png"),
        ),
        title:
        Text(
          'Yemek Kapıda',
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.red[500]),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Toplam Tutar: $totalPrice TL'),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 50,
              color: Colors.red[400],
              child: const Text(
                "SEPET",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            Card(
              margin: const EdgeInsets.all(5),
              elevation: 20,
              color: Colors.blue[300],
              child: const ListTile(
                title: Text('Sipariş Özeti',
                    style:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.red,
                height: 20,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(widget.items[index].title),
                    subtitle: Text(widget.items[index].subtitle + ' TL'),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle_outline),
                      onPressed: () {
                        setState(() {
                          widget.items.removeAt(index);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var alert = AlertDialog(
            title: const Text("Ödeme Sayfasına Yönlendiriliyorsunuz."),
            content: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Odeme())
                );
              },
              child: const Text(
                'Ödeme Sayfasına Git',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          );
          showDialog(
              context: context, builder: (BuildContext context) => alert);
        },
        child: const Icon(Icons.check_sharp),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

void saveDataToDatabase(String name, String city, String district, String address, String phone) async {
  var url = Uri.parse('http://localhost:11974/api');

  var body = jsonEncode({
    'name': name,
    'city': city,
    'district': district,
    'address': address,
    'phone': phone,
  });

  var response = await http.post(url, body: body);

  if (response.statusCode == 200) {
    print('Veriler kaydedildi');
  } else {
    print('Hata oluştu: ${response.statusCode}');
  }
}

class Odeme extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController districtController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Ödeme Sayfası'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'İsim Soyisim',
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: cityController,
              decoration: InputDecoration(
                labelText: 'Şehir',
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: districtController,
              decoration: InputDecoration(
                labelText: 'İlçe',
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Adres',
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Telefon Numarası',
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: (){
                String name = nameController.text;
                String city = cityController.text;
                String district = districtController.text;
                String address = addressController.text;
                String phone = phoneController.text;

                saveDataToDatabase(name, city, district, address, phone);
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Yemek(),));
              },
              child: Text('Ödeme Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
