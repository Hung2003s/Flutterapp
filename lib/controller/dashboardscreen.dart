import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../View/homepage/homepage_screen/homepage.dart';


class Dashboardscreen extends StatefulWidget {
  const Dashboardscreen({super.key});
  @override
  State<StatefulWidget> createState() => _Dashboardscreen();

}
class _Dashboardscreen extends State<Dashboardscreen> {
  int currentindex = 0;
  List<Widget> screen = [
    const Homepage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  void _onItemtapped(int index) {
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff22BB9B),
        unselectedItemColor: const Color(0xff181818).withOpacity(0.1),
        onTap: _onItemtapped,
        items: const [
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