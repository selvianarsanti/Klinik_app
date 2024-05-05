class Pasien {
  late int
      id; // Properti untuk menyimpan ID pasien (late keyword menandakan bahwa nilainya akan ditetapkan nanti sebelum digunakan).
  late String nama; // Properti untuk menyimpan nama pasien.
  late String noRm; // Properti untuk menyimpan nomor rekam medis pasien.
  late String tgllahir; // Properti untuk menyimpan tanggal lahir pasien.
  late String nmrtlp; // Properti untuk menyimpan nomor telepon pasien.
  late String alamat; // Properti untuk menyimpan alamat pasien.

  Pasien(Map pasien) {
    // Konstruktor kelas Pasien yang menerima sebuah Map bernama "pasien".
    id = pasien[
        'id']; // Mengassign nilai dari kunci 'id' dalam map "pasien" ke properti "id".
    nama = pasien[
        'nama']; // Mengassign nilai dari kunci 'nama' dalam map "pasien" ke properti "nama".
    noRm = pasien[
        'noRm']; // Mengassign nilai dari kunci 'noRm' dalam map "pasien" ke properti "noRm".
    tgllahir = pasien[
        'tgllahir']; // Mengassign nilai dari kunci 'tgllahir' dalam map "pasien" ke properti "tgllahir".
    nmrtlp = pasien[
        'nmrtlp']; // Mengassign nilai dari kunci 'nmrtlp' dalam map "pasien" ke properti "nmrtlp".
    alamat = pasien[
        'alamat']; // Mengassign nilai dari kunci 'alamat' dalam map "pasien" ke properti "alamat".
  }
}
