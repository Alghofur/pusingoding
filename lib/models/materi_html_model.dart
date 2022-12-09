class Html {
  final int htmlId;
  final String materiKe;
  final String judul;
  final String imageSrc;
  final String paragraf1;
  final String paragraf2;
  final String paragraf3;
  final String paragraf4;

  Html({
    required this.htmlId,
    required this.materiKe,
    required this.judul,
    required this.imageSrc,
    required this.paragraf1,
    required this.paragraf2,
    required this.paragraf3,
    required this.paragraf4,
  });

  //list materi html

  static List<Html> htmlList = [
    Html(
      htmlId: 0,
      materiKe: "Materi ke 1",
      judul: "Sejarah HTML",
      imageSrc: "assets/images/clock.png",
      paragraf1:
          "HTML pertama kali dikembangkan oleh Tim Berners-Lee dari organisasi European Organization for Nuclear Research (CERN) tahun 1990. Markup language atau HTML ini diciptakan oleh suatu perusahaan penjual perangkat keras dan lunak yakni IBM atau International Bussiness Machines.",
      paragraf2:
          "Sekitar era 1980an, IBM menciptakan sebuah bahasa yang menggabungkan tag atau simbol dengan teks dalam sebuah dokumen. Bahasa yang diciptakan oleh IBM ini dikenal dengan sebutan markup language atau Generalized markup language (GML).",
      paragraf3:
          "Kemudian rilis versi pertama HTML ditulis oleh Tim Berners-Lee pada 1993. Dikutip dari Washington.edu, sejak itu, mulai banyak versi HTML yang berbeda. Versi yang paling banyak digunakan sepanjang tahun 2000-an adalah HTML 4.01, yang menjadi standar resmi sejak bulan Desember 1999.",
      paragraf4:
          "Versi lain, XHTML, adalah penulisan ulang HTML sebagai bahasa XML. XML adalah bahasa markup standar yang digunakan untuk membuat bahasa markup lainnya. Ratusan bahasa XML masih digunakan saat ini, termasuk GML (Geography Markup Language), MathML, MusicML, dan RSS (Really Simple Syndication).",
    ),
    Html(
      htmlId: 1,
      materiKe: "Materi ke 2",
      judul: "Pengenalan HTML",
      imageSrc: "assets/images/new-project.png",
      paragraf1: "LOREM IPSUM",
      paragraf2: "LOREM IPSUM",
      paragraf3: "LOREM IPSUM",
      paragraf4: "LOREM IPSUM",
    ),
    Html(
      htmlId: 2,
      materiKe: "Materi ke 3",
      judul: "Tag,Elemen,dan Atribut",
      imageSrc: "assets/images/web-programming.png",
      paragraf1: "LOREM IPSUM",
      paragraf2: "LOREM IPSUM",
      paragraf3: "LOREM IPSUM",
      paragraf4: "LOREM IPSUM",
    ),
    Html(
      htmlId: 3,
      materiKe: "Materi ke 4",
      imageSrc: "assets/images/space.png",
      judul: "Membuat Paragraf",
      paragraf1: "LOREM IPSUM",
      paragraf2: "LOREM IPSUM",
      paragraf3: "LOREM IPSUM",
      paragraf4: "LOREM IPSUM",
    ),
    Html(
      htmlId: 4,
      materiKe: "Materi ke 5",
      judul: "Membuat Komentar",
      imageSrc: "assets/images/chat.png",
      paragraf1: "LOREM IPSUM",
      paragraf2: "LOREM IPSUM",
      paragraf3: "LOREM IPSUM",
      paragraf4: "LOREM IPSUM",
    ),
  ];
}
