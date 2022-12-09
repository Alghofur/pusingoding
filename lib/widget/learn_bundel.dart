// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pusingoding/screens/materi_html_page.dart';

class LearnBundelCard extends StatefulWidget {
  const LearnBundelCard({Key? key}) : super(key: key);

  @override
  State<LearnBundelCard> createState() => _LearnBundelCardState();
}

class _LearnBundelCardState extends State<LearnBundelCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          splashColor: Color.fromARGB(255, 255, 102, 0),
          borderRadius: BorderRadius.circular(30),
          onTap: (() => Navigator.push(
              context, MaterialPageRoute(builder: (_) => MateriHtml()))),
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "HTML",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "HTML adalah bahasa standar pemrogaman yang digunakan untuk membuat halaman website",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  AspectRatio(
                    aspectRatio: 0.85,
                    child: Image.asset(
                      "assets/images/html-5.png",
                      fit: BoxFit.contain,
                      alignment: Alignment.centerLeft,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
