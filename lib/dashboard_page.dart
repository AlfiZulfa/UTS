import 'package:flutter/material.dart';
import 'profile_page.dart';

class DashboardPage extends StatelessWidget {
  final String username;

  const DashboardPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Aplikasi"),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header sapaan
            Text(
              "Halo, ${username.isEmpty ? "Zulfa" : username} 👋",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // Banner gambar (penuh tapi ukuran kecil)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/banner.png',
                  height: 100,        // tinggi seperti logo
                  width: double.infinity, // lebar penuh layar
                  fit: BoxFit.contain, // biar gambar tampil full tanpa terpotong
                ),
              ),
            ),
            const SizedBox(height: 24),

            // Menu utama
            const Text(
              "Menu Utama",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 12),

            GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                _menuItem(context, Icons.person, "Profil", () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                }),
                _menuItem(context, Icons.list, "Data", () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Menu Data diklik"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }),
                _menuItem(context, Icons.settings, "Pengaturan", () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Menu Pengaturan diklik"),
                      duration: Duration(seconds: 1),
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget item menu
  Widget _menuItem(
      BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.teal, size: 36),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
