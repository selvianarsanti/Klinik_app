import 'package:flutter/material.dart'; // Mengimpor package flutter/material.dart yang berisi widget dan utilitas UI dari Flutter.
import '/widget/sidebar.dart'; // Mengimpor file sidebar.dart dari direktori widget.
import '/model/poli.dart'; // Mengimpor file poli.dart dari direktori model.
import '/ui/poli/poli_item.dart'; // Mengimpor file poli_item.dart.
import '/ui/poli/poli_form.dart'; // Mengimpor file poli_form.dart.

class PoliPage extends StatefulWidget {
  const PoliPage({Key? key}) : super(key: key);

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(), // Menambahkan Sidebar sebagai drawer pada Scaffold.
      appBar: AppBar(
        title: const Text(
            "Data Poli"), // Menampilkan judul "Data Poli" pada AppBar.
        actions: [
          GestureDetector(
            child:
                const Icon(Icons.add), // Menampilkan ikon tambah pada AppBar.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        PoliForm()), // Navigasi ke halaman PoliForm.
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Anak")), // Menambahkan item PoliItem dengan namaPoli "Poli Anak".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Kandungan")), // Menambahkan item PoliItem dengan namaPoli "Poli Kandungan".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Gigi")), // Menambahkan item PoliItem dengan namaPoli "Poli Gigi".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli THT")), // Menambahkan item PoliItem dengan namaPoli "Poli THT".
        ],
      ),
    );
  }
}
