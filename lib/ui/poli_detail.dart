import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart untuk menggunakan widget dan komponen UI dari Flutter.
import '../model/poli.dart'; // Mengimpor file poli.dart dari direktori model.

class PoliDetail extends StatefulWidget {
  final Poli
      poli; // Mendeklarasikan variabel poli dengan tipe data Poli yang diterima sebagai argumen.

  const PoliDetail(
      {Key? key,
      required this.poli}); // Konstruktor untuk PoliDetail dengan menerima argumen poli yang wajib diisi.

  @override
  State<PoliDetail> createState() =>
      _PoliDetailState(); // Membuat state untuk PoliDetail.
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Detail Poli"), // Menampilkan teks "Detail Poli" sebagai judul AppBar.
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Memberikan jarak kosong vertikal sebesar 20.
          Text(
            "Nama Poli : ${widget.poli.namaPoli}", // Menampilkan teks "Nama Poli : " diikuti dengan nama poli dari objek widget.poli.
            style: TextStyle(fontSize: 20), // Mengatur ukuran teks menjadi 20.
          ),
          SizedBox(height: 20), // Memberikan jarak kosong vertikal sebesar 20.
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, // Mengatur penyebaran elemen dalam Row secara merata.
            children: [
              ElevatedButton(
                onPressed:
                    () {}, // Menambahkan fungsi yang akan dijalankan saat tombol ditekan (kosong pada contoh ini).
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .green), // Mengatur latar belakang tombol menjadi hijau.
                child: const Text(
                    "Ubah"), // Menampilkan teks "Ubah" di dalam tombol.
              ),
              ElevatedButton(
                onPressed:
                    () {}, // Menambahkan fungsi yang akan dijalankan saat tombol ditekan (kosong pada contoh ini).
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .red), // Mengatur latar belakang tombol menjadi merah.
                child: const Text(
                    "Hapus"), // Menampilkan teks "Hapus" di dalam tombol.
              ),
            ],
          ),
        ],
      ),
    );
  }
}
