class Html {
  final int htmlId;
  final String materiKe;
  final String judul;
  final String imageSrc;
  final String isiMateri;

  Html({
    required this.htmlId,
    required this.materiKe,
    required this.judul,
    required this.imageSrc,
    required this.isiMateri,
  });

  //list materi html

  static List<Html> htmlList = [
    Html(
      htmlId: 0,
      materiKe: "Materi ke 1",
      judul: "Sejarah HTML",
      imageSrc: "assets/images/web-programming.png",
      isiMateri: "LOREM IPSUM",
    ),
    Html(
      htmlId: 1,
      materiKe: "Materi ke 2",
      judul: "Pengenalan HTML",
      imageSrc: "assets/images/web-programming.png",
      isiMateri: "LOREM IPSUM",
    ),
    Html(
      htmlId: 2,
      materiKe: "Materi ke 3",
      judul: "Tag, Elemen, dan Atribut",
      imageSrc: "assets/images/web-programming.png",
      isiMateri: "LOREM IPSUM",
    ),
    Html(
      htmlId: 3,
      materiKe: "Materi ke 4",
      imageSrc: "assets/images/web-programming.png",
      judul: "Membuat Paragraf",
      isiMateri: "LOREM IPSUM",
    ),
    Html(
      htmlId: 4,
      materiKe: "Materi ke 5",
      judul: "Cara Membuat Komentar",
      imageSrc: "assets/images/web-programming.png",
      isiMateri: "LOREM IPSUM",
    ),
  ];
}
