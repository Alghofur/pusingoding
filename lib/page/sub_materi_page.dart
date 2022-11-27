import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SubMateriPage extends StatefulWidget {
  const SubMateriPage({super.key});

  @override
  State<SubMateriPage> createState() => _SubMateriPageState();
}

class _SubMateriPageState extends State<SubMateriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Materi HTML"),
      ),
    );
  }
}
