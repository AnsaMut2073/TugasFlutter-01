import 'package:get/get.dart';
import 'package:new_project_1/models/makanan_model.dart';

class ListMakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Soto Ayam",
      hargaMakanan: "12.000",
      gambarUrl:
      "https://assets.pikiran-rakyat.com/crop/0x0:0x0/720x0/webp/photo/2023/08/18/805485417.jpg",
      deskripsi:
      "Soto ayam kuah kuning gurih dengan suwiran ayam, soun, dan telur rebus. Disajikan dengan taburan bawang goreng dan perasan jeruk nipis.",
      rating: 4.7,
      review: [
        "Kuahnya gurih banget, bumbunya meresap!",
        "Porsinya pas, harga ramah kantong.",
        "Soto terenak di dekat kampus.",
      ],
    ),
    MakananModel(
      namaMakanan: "Pindang Ikan",
      hargaMakanan: "20.000",
      gambarUrl:
      "https://image.idn.media/post/20250306/screenshot-2025-0306-1132262-a75fb2b3d4001a687d97e057ec796d42.jpg",
      deskripsi:
      "Pindang ikan patin dengan kuah bening asam pedas, dicampur tomat, cabai, dan daun kemangi. Segar dan bikin nambah nasi.",
      rating: 4.5,
      review: [
        "Asam pedasnya nampol, ikan segar.",
        "Kuahnya seger, cocok buat siang hari.",
        "Bumbunya pas, nggak terlalu asin.",
      ],
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar",
      hargaMakanan: "35.000",
      gambarUrl:
      "https://assets.unileversolutions.com/recipes-v2/257328.jpg",
      deskripsi:
      "Ayam bakar yang dimasak dengan penuh cinta, makan satu porsi aja ga cukup!",
      rating: 4.8,
      review: [
        "Bumbunya meresap sempurna",
        "Ada aroma smoky-nya, enak banget!",
      ],
    ),
    MakananModel(
      namaMakanan: "Burger",
      hargaMakanan: "12.000",
      gambarUrl:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2ieoSpIYal4jeiQCPJw4JoEelnnhF0aV_JYBQcUL1rE1snw4ZUoMEglKv&s=10",
      deskripsi:
      "Burger dengan isian yang super juicy.",
      rating: 4.8,
      review: [
        "Dagingnya tebel dan ada aroma smokynya, bikin nagih!",
        "Seladanya segar!",
        "Saran: wijennya banyakin.",
      ],
    ),
  ];
}