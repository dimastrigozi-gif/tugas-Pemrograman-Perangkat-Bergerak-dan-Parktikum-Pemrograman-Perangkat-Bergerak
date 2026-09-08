class Mahasiswa {
  String nama;
  String id;
  String? kontak;

  Mahasiswa(this.nama, this.id, {this.kontak});

  tampilkan() {
    print("Nama: $nama");
    print("NIM: $id");
    print("Email: ${kontak ?? 'Tidak tersedia'}");
    print("----------------");
  }
}

void main() {
  var mhs1 = Mahasiswa("Dimas", "362558302038",
      kontak: "dimas@gmail.com");

  var mhs2 = Mahasiswa("Raka", "362558302039");

  mhs1.tampilkan();
  mhs2.tampilkan();
}