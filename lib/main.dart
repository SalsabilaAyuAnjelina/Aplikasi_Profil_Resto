import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final resto = <String, String>{};

  MainApp({super.key}) {
    resto['name'] = 'delicious cuisine';
    resto['email'] = 'restowenak@gmail.com';
    resto['phone'] = '+6285225163988';
    resto['image'] = 'restoran.jpeg';
    resto['addr'] = 'Jl. Pemuda No.118, Sekayu, Kec. Semarang Tengah.';
    resto['desc'] = ''' Restoran Wenak adalah surga kuliner yang menggabungkan 
    cita rasa autentik dengan suasana yang ramah dan nyaman. Terletak di jantung kota, 
    restoran ini menawarkan pengalaman makan yang tak terlupakan untuk setiap tamu. ''';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Restoran Wenak!",
      home: Scaffold(
        appBar: AppBar(title: const Text("Restoran Wenak!")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                resto['name'] ?? '',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
            Image(image: AssetImage('assets/${resto["image"] ?? ''}')),
            SizedBox(height: 10),
            Row(
              children: [
                btnContact(Icons.alternate_email, Colors.green[900]),
                btnContact(Icons.phone, Colors.deepPurple),
                btnContact(Icons.map_sharp, Colors.blueAccent)
              ],
            ),
            SizedBox(height: 10),
          ]),
        ),
      ),
    );
  }

  Expanded btnContact(IconData icon, var color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Icon(icon),
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: Colors.white,
            textStyle:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}
