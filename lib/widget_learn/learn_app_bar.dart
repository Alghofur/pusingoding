// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:pusingoding/page/profiledev.dart';
import 'package:pusingoding/widget_learn/learn_bundel.dart';
import 'package:pusingoding/widget_learn/learn_page.dart';

class LearnAppBarr extends StatefulWidget {
  const LearnAppBarr({Key? key}) : super(key: key);

  @override
  State<LearnAppBarr> createState() => _LearnAppBarrState();
}

class _LearnAppBarrState extends State<LearnAppBarr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: buildAppBar(),
      body: LearnPage(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
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
            bottomRight: Radius.circular(50), bottomLeft: Radius.circular(50)),
      ),
      actions: [
        Row(
          children: [
            Container(
                height: 45,
                width: 45,
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Profile())),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/kannacute.jpg'),
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
    );
  }
}
