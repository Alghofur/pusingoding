// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:flutter/material.dart';
import 'package:pusingoding/screens/easterEgg_profiledev.dart';
import 'package:pusingoding/widget/learn_bundel.dart';
import 'package:pusingoding/widget/search/search.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF92E0EB),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            'Hello, Onichan',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        toolbarHeight: 90,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
        ),
        actions: [
          Row(
            children: [
              Container(
                  height: 45,
                  width: 45,
                  alignment: Alignment.center,
                  child: InkWell(
                    radius: 40,
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Profile())),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/kannacute.jpg'),
                      radius: 40,
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 26,
              ),
            ],
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SearchField(),
          LearnBundelCard(),
          LearnBundelCard(),
          LearnBundelCard(),
        ],
      ),
    );
  }
}
