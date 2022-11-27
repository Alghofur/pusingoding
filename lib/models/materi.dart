// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Materi {
  final int id;
  final String title, description, imageSrc;
  final Color color;

  Materi(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageSrc,
      required this.color});
}

//list data
List<Materi> dataMateri = [
  Materi(
    id: 1,
    title: "Hypertext Markup Language",
    description: "bahasa pemrograman standar dalam pembuatan halaman web",
    imageSrc: "assets/images/html-5.png",
    color: Color(0xFFF37B2B),
  ),
  Materi(
    id: 2,
    title: "CSS",
    description:
        "bahasa stylesheet yang digunakan untuk mengatur tampilan suatu dokumen yang ditulis dalam bahasa markup",
    imageSrc: "assets/images/css-3.png",
    color: Color.fromARGB(255, 14, 63, 155),
  ),
  Materi(
    id: 3,
    title: "Javascript",
    description:
        "bahasa pemrograman yang digunakan dalam pengembangan website agar lebih dinamis dan interaktif.",
    imageSrc: "assets/images/Javascript-js.png",
    color: Color.fromARGB(255, 209, 196, 12),
  ),
];
