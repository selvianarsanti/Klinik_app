import 'package:flutter/material.dart'; // Impor paket material.dart dari Flutter framework.
import '/model/poli.dart'; // Impor file poli.dart dari direktori model.
import 'poli_detail.dart'; // Impor file poli_detail.dart dari direktori yang sama.

class PoliItem extends StatelessWidget {
  // Deklarasi kelas PoliItem.
  final Poli poli; // Deklarasi variabel poli.

  const PoliItem({super.key, required this.poli}); // Konstruktor PoliItem.

  @override
  Widget build(BuildContext context) {
    // Metode build untuk membangun antarmuka pengguna.
    return GestureDetector(
      // Menginisialisasi GestureDetector.
      child: Card(
        // Menginisialisasi Card.
        child: ListTile(
          // Menginisialisasi ListTile.
          title: Text(
              "${poli.namaPoli}"), // Menetapkan judul ListTile dengan teks dari properti namaPoli.
        ),
      ),
      onTap: () {
        // Menetapkan fungsi yang akan dijalankan ketika item daftar ditekan.
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => PoliDetail(
                  poli:
                      poli)), // Menavigasi ke halaman PoliDetail dengan meneruskan objek poli sebagai argumen konstruktor.
        );
      },
    );
  }
}
