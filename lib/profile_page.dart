import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil Mahasiswa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto profil
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/ak.jpg'),
            ),
            const SizedBox(height: 16),

            // Nama
            const Text(
              "Zulfa Alfi Rohmah",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 8),

            // NPM dan Email
            const Text(
              "NPM: 22670071",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const Text(
              "Email: zulfa@example.com",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 20),

            // Info tambahan (Prodi dan Semester)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.school, color: Colors.teal),
                SizedBox(width: 8),
                Text(
                  "Prodi: Informatika",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(width: 16),
                Icon(Icons.calendar_today, color: Colors.teal),
                SizedBox(width: 8),
                Text(
                  "Semester 5",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const Spacer(),

            // Tombol kembali (diperkecil)
            SizedBox(
              width: 220, // Lebar tombol diperkecil dari full menjadi 220 px
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text("Kembali ke Dashboard"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
