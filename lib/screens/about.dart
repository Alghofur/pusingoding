import 'package:flutter/material.dart';
import 'package:pusingoding/constant.dart';
import 'package:pusingoding/widget/profile_widget.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "About me",
                style: TextStyle(
                  color: Constant.blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Color(0xFF92E0EB),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Constant.primaryColor.withOpacity(.5),
                      width: 5.0,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        ExactAssetImage('assets/images/fotoku.png'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      'Muhammad Al Ghofur',
                      style: TextStyle(
                        color: Constant.blackColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  "awalludin.i.a.g@gmail.com",
                  style: TextStyle(
                    color: Constant.blackColor.withOpacity(.3),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  // height: size.height * .7,
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProfileWidget(
                        icon: Icons.person,
                        title: 'My Profile',
                      ),
                      ProfileWidget(
                        icon: Icons.settings,
                        title: 'Settings',
                      ),
                      ProfileWidget(
                        icon: Icons.notifications,
                        title: 'Notifications',
                      ),
                      ProfileWidget(
                        icon: Icons.chat,
                        title: 'FAQs',
                      ),
                      ProfileWidget(
                        icon: Icons.share,
                        title: 'Share',
                      ),
                      ProfileWidget(
                        icon: Icons.logout,
                        title: 'Log Out',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
