import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Diri'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🖼️ Foto Profil dari Internet
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                'assets/zul.png', // bisa diganti link foto kamu
              ),
            ),
            SizedBox(height: 20),

            // 🧾 Nama
            Text(
              'Nama: Zulfa Alfi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // 📞 Informasi tambahan
            Column(
              children: const [
                Text('NIM: 22670071'),
                Text('Program Studi: Informatika'),
                Text('Universitas: Universitas PGRI Semarang'),
                Text('Hobi: traveling, membaca, coding'),
              ],
            ),

            SizedBox(height: 30),
            ElevatedButton.icon(
              icon: Icon(Icons.arrow_back),
              label: Text('Kembali ke Halaman Utama'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
