// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pusingoding/screens/detail_materi_html.dart';
import 'package:pusingoding/widget/materi_html_bundle.dart';

import '../models/materi_html_model.dart';

class MateriHtml extends StatefulWidget {
  const MateriHtml({super.key});

  @override
  State<MateriHtml> createState() => _MateriHtmlState();
}

class _MateriHtmlState extends State<MateriHtml> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    List<Html> _htmlList = Html.htmlList;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Materi HTML",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        // height: size.height * .5,
        child: ListView.builder(
            itemCount: _htmlList.length,
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child:
                                DetailHtmlPage(htmlId: _htmlList[index].htmlId),
                            type: PageTransitionType.bottomToTop));
                  },
                  child: MateriHtmlWidget(index: index, htmlList: _htmlList));
            }),
      ),
    );
  }
}
