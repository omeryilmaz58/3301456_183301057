import 'package:flutter/material.dart';
import 'package:mobil_app/menuler/restoran.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Doner extends StatefulWidget {
  const Doner({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DonerState createState() => _DonerState();
}

class DonerItem {
  final String title;
  String subtitle;

  DonerItem({required this.title, required this.subtitle});
}

class _DonerState extends State<Doner> {
  int fiyatYiyecek = 100;
  int fiyatIcecek = 50;

  List<DonerItem> donerItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[100],
        title: Text('Dönerci Usta',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red[500]),),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const Card(
              child: ListTile(
                title: Text('DÖNERLER',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              leading: Image.asset("assets/image/tavuk-doner-ekmek.png"),
              title: const Text('Ekmek Arası Tavuk Döner'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Ekmek Arası Tavuk Döner') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Ekmek Arası Tavuk Döner',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/et-doner-ekmek.png"),
              title: const Text('Ekmek Arası Et Döner'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Ekmek Arası Et Döner') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Ekmek Arası Et Döner',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/tavuk_durum.png"),
              title: const Text('Tavuk Dürüm'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Tavuk Dürüm') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Tavuk Dürüm',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/tavuk_durum.png"),
              title: const Text('Çift Lavaşlı Tavuk Dürüm'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Çift Lavaşlı Tavuk Dürüm') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Çift Lavaşlı Tavuk Dürüm',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/tavuk_durum.png"),
              title: const Text('Zurna Dürüm'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Zurna Dürüm') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Zurna Dürüm',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/durum-et.png"),
              title: const Text('Et Dürüm'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Et Dürüm') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Et Dürüm',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            const Card(
              child: ListTile(
                title: Text('KEBAPLAR',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: Colors.red,height: 20,),
            ),
            ListTile(
              leading: Image.asset("assets/image/adana.png"),
              title: const Text('Adana Kebap'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Adana Kebap') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Adana Kebap',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/urfa.png"),
              title: const Text('Urfa Kebap'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Urfa Kebap') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Urfa Kebap',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/cag-kebap.png"),
              title: const Text('Cağ Kebabı'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Cağ Kebabı') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Cağ Kebabı',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/iskender.png"),
              title: const Text('İskender Kebap'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'İskender Kebap') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'İskender Kebap',
                        subtitle: '$fiyatYiyecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/beyti.png"),
              title: const Text('Beyti Kebap'),
              subtitle: Text('$fiyatYiyecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Beyti Kebap') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatYiyecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Beyti Kebap',
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
              leading: Image.asset("assets/image/ayran.png"),
              title: const Text('Ayran'),
              subtitle: Text('$fiyatIcecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Ayran') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatIcecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Ayran',
                        subtitle: '$fiyatIcecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/kola.png"),
              title: const Text('Kola'),
              subtitle: Text('$fiyatIcecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Kola') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatIcecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Kola',
                        subtitle: '$fiyatIcecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/gazoz.png"),
              title: const Text('Gazoz'),
              subtitle: Text('$fiyatIcecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Gazoz') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatIcecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Gazoz',
                        subtitle: '$fiyatIcecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/salgam-suyu.png"),
              title: const Text('Şalgam Suyu'),
              subtitle: Text('$fiyatIcecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Şalgam Suyu') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatIcecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Şalgam Suyu',
                        subtitle: '$fiyatIcecek',
                      ),
                    );
                  }
                });
              },),
            ),
            ListTile(
              leading: Image.asset("assets/image/soguk-cay.png"),
              title: const Text('Soğuk Çay'),
              subtitle: Text('$fiyatIcecek TL'),
              trailing: IconButton(icon: const Icon(Icons.add_circle_outline),onPressed: (){
                setState(() {
                  bool isDuplicate = false;
                  for (var item in donerItems) {
                    if (item.title == 'Soğuk Çay') {
                      item.subtitle = '${int.parse(item.subtitle) + fiyatIcecek}';
                      isDuplicate = true;
                      break;
                    }
                  }
                  if (!isDuplicate) {
                    donerItems.add(
                      DonerItem(
                        title: 'Soğuk Çay',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sepet(items: donerItems))
                );
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
  final List<DonerItem> items;

  const Sepet ({Key? key, required this.items}) : super(key: key);

  @override
  _SepetState createState() => _SepetState();
}

class _SepetState extends State<Sepet> {

  int calculateTotalPrice(List<DonerItem> items) {
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

