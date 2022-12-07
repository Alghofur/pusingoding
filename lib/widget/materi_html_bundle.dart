import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pusingoding/models/materi_html_model.dart';
import 'package:pusingoding/screens/detail_materi_html.dart';

class MateriHtmlWidget extends StatelessWidget {
  const MateriHtmlWidget({
    Key? key,
    required this.index,
    required this.htmlList,
  }) : super(key: key);

  final int index;
  final List<Html> htmlList;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            PageTransition(
                child: DetailHtmlPage(
                  htmlId: htmlList[index].htmlId,
                ),
                type: PageTransitionType.bottomToTop));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.cyan.withOpacity(1),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 80.0,
        padding: const EdgeInsets.only(left: 10, top: 10),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                Positioned(
                  bottom: 6.5,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 45.0,
                    child: Image.asset(htmlList[index].imageSrc),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(htmlList[index].materiKe),
                      Text(
                        htmlList[index].judul,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
