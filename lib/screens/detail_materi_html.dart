// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
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
    // Size size = MediaQuery.of(context).size;
    List<Html> _htmlList = Html.htmlList;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                _htmlList[widget.htmlId].judul,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.blueAccent),
              ),
              Text(
                _htmlList[widget.htmlId].isiMateri,
                style: const TextStyle(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
