import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/homepage.dart';

class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Dashboardscreen();

}
class _Dashboardscreen extends State<Dashboardscreen> {
  int currentindex = 0;
  List<Widget> screen = [
    Container(
      child: Homepage(),
    ),
  ];
  @override
  void _onItemtapped(int index) {
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xff22BB9B),
        unselectedItemColor: Color(0xff181818).withOpacity(0.1),
        onTap: _onItemtapped,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.house_sharp)
          ),
          BottomNavigationBarItem(
              label: 'Notification',
              icon: Icon(Icons.notifications)
          ),
          BottomNavigationBarItem(
              label: 'Notification',
              icon: Icon(Icons.wallet)
          ),
          BottomNavigationBarItem(
              label: 'Chat',
              icon: FaIcon(FontAwesomeIcons.commentDots)
          ),
          BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.person_rounded)
          ),
        ],
      ),
      body: SafeArea(
        child: screen.elementAt(currentindex),
      ),
    );

  }

}