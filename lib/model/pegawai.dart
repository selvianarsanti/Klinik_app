class Pegawai {
  late int
      id; // Properti untuk menyimpan ID pegawai (late keyword menandakan bahwa nilainya akan ditetapkan nanti sebelum digunakan).
  late String nip; // Properti untuk menyimpan NIP pegawai.
  late String nama; // Properti untuk menyimpan nama pegawai.
  late String tgllahir; // Properti untuk menyimpan tanggal lahir pegawai.
  late String nmrtlp; // Properti untuk menyimpan nomor telepon pegawai.
  late String email; // Properti untuk menyimpan email pegawai.
  late String password; // Properti untuk menyimpan password pegawai.

  Pegawai(Map pegawai) {
    // Konstruktor kelas Pegawai yang menerima sebuah Map bernama "pegawai".
    id = pegawai[
        'id']; // Mengassign nilai dari kunci 'id' dalam map "pegawai" ke properti "id".
    nip = pegawai[
        'nip']; // Mengassign nilai dari kunci 'nip' dalam map "pegawai" ke properti "nip".
    nama = pegawai[
        'nama']; // Mengassign nilai dari kunci 'nama' dalam map "pegawai" ke properti "nama".
    tgllahir = pegawai[
        'tgllahir']; // Mengassign nilai dari kunci 'tgllahir' dalam map "pegawai" ke properti "tgllahir".
    nmrtlp = pegawai[
        'nmrtlp']; // Mengassign nilai dari kunci 'nmrtlp' dalam map "pegawai" ke properti "nmrtlp".
    email = pegawai[
        'email']; // Mengassign nilai dari kunci 'email' dalam map "pegawai" ke properti "email".
    password = pegawai[
        'password']; // Mengassign nilai dari kunci 'password' dalam map "pegawai" ke properti "password".
  }
}
