import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MateriHtml extends StatefulWidget {
  const MateriHtml({super.key});

  @override
  State<MateriHtml> createState() => _MateriHtmlState();
}

class _MateriHtmlState extends State<MateriHtml> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Materi HTML",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
      ),
    );
  }
}
