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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Material(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(30),
        child: InkWell(
          splashColor: Colors.blueAccent,
          borderRadius: BorderRadius.circular(30),
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            height: 200,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 85, 16, 0),
                  child: Row(
                    children: const [
                      Text(
                        "HTML",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
