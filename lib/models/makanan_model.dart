class MakananModel {
  String namaMakanan;
  String hargaMakanan;
  String gambarUrl;      // URL gambar
  String deskripsi;      // deskripsi makanan
  double rating;         // 1.0 - 5.0
  List<String> review;   // list ulasan

  // ini konstruktor
  // agar nanti bisa langsung diisikan ketika membuat object
  MakananModel(
      {
        required this.namaMakanan,
        required this.hargaMakanan,
        required this.gambarUrl,
        required this.deskripsi,
        required this.rating,
        required this.review,
      });
}