// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pusingoding/constant.dart';
import 'package:pusingoding/models/materi_html_model.dart';

class DetailHtmlPage extends StatefulWidget {
  final int htmlId;
  const DetailHtmlPage({super.key, required this.htmlId});

  @override
  State<DetailHtmlPage> createState() => _DetailHtmlPageState();
}

class _DetailHtmlPageState extends State<DetailHtmlPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Html> _htmlList = Html.htmlList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 35,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orangeAccent),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 20, top: 90),
                    child: Text(
                      _htmlList[widget.htmlId].judul,
                      style: const TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 0, left: 30, right: 30),
              height: 500,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(55),
                  topLeft: Radius.circular(55),
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("\n"),
                      const Text("\n"),
                      Text(
                        _htmlList[widget.htmlId].paragraf1,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const Text("\n"),
                      Text(
                        _htmlList[widget.htmlId].paragraf2,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const Text("\n"),
                      Text(
                        _htmlList[widget.htmlId].paragraf3,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      const Text("\n"),
                      Text(
                        _htmlList[widget.htmlId].paragraf4,
                        style: const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Poppins",
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
