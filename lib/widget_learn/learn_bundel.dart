// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LearnBundelCard extends StatefulWidget {
  const LearnBundelCard({Key? key}) : super(key: key);

  @override
  State<LearnBundelCard> createState() => _LearnBundelCardState();
}

class _LearnBundelCardState extends State<LearnBundelCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Ink(
            color: Colors.amberAccent,
            child: InkWell(
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                height: 200,
              ),
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
