import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import 'poli_page.dart'; // Mengimpor file poli_page.dart.
import 'poli_update_form.dart'; // Mengimpor file poli_update_form.dart.
import '../model/poli.dart'; // Mengimpor file poli.dart dari direktori model.

class PoliDetail extends StatefulWidget {
  final Poli poli; // Mendeklarasikan variabel poli dengan tipe Poli.

  const PoliDetail({Key? key, required this.poli})
      : super(
            key:
                key); // Konstruktor yang menerima parameter key dengan tipe Key dan parameter poli dengan tipe Poli.

  @override
  _PoliDetailState createState() =>
      _PoliDetailState(); // Mengimplementasikan metode createState() yang mengembalikan instance dari _PoliDetailState.
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("Detail Poli"), // Menampilkan judul "Detail Poli" pada AppBar.
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "Nama Poli : ${widget.poli.namaPoli}", // Menampilkan nama poli dari widget.poli.
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliUpdateForm(
                poli: widget
                    .poli), // Menavigasi ke halaman PoliUpdateForm dengan membawa data poli.
          ),
        );
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors
              .green), // Mengatur warna latar belakang tombol menjadi hijau.
      child: const Text("Ubah"), // Menampilkan teks "Ubah" pada tombol.
    );
  }

  Widget _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: const Text(
              "Yakin ingin menghapus data ini?"), // Menampilkan pesan konfirmasi.
          actions: [
            // tombol ya
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PoliPage()), // Menavigasi ke halaman PoliPage setelah menghapus data.
                );
              },
              child: const Text("YA"), // Menampilkan teks "YA" pada tombol.
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .red), // Mengatur warna latar belakang tombol menjadi merah.
            ),
            // tombol batal
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Tidak"), // Menampilkan teks "Tidak" pada tombol.
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .green), // Mengatur warna latar belakang tombol menjadi hijau.
            ),
          ],
        );
        showDialog(
            context: context,
            builder: (context) =>
                alertDialog); // Menampilkan dialog konfirmasi.
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors
              .red), // Mengatur warna latar belakang tombol menjadi merah.
      child: const Text("Hapus"), // Menampilkan teks "Hapus" pada tombol.
    );
  }
}
