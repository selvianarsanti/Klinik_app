// Impor paket material dari Flutter
import 'package:flutter/material.dart';

// Impor kelas PoliPage dari direktori 'ui'
import '/ui/poli_page.dart';

// Titik masuk aplikasi
void main() => runApp(MyApp());

// Widget utama dari aplikasi
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Membuat dan mengembalikan widget MaterialApp
    return MaterialApp(
      // Mengatur judul aplikasi
      title: 'Klinik APP',
      // Menonaktifkan banner debug
      debugShowCheckedModeBanner: false,
      // Mengatur halaman utama aplikasi menjadi widget PoliPage
      home: PoliPage(),
    );
  }
}
