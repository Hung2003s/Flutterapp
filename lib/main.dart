import 'package:flutter/material.dart';

import 'package:foodapp/Controller/dashboardscreen.dart';
import 'package:foodapp/Controller/product_provider.dart';
import 'package:provider/provider.dart';


class soluong with ChangeNotifier {
  int _scount = 10;
  int get count => _scount;
  void add() {
    _scount++;
    notifyListeners();
  }
  void remove() {
    if(_scount > 0) {
      _scount--;
    }
    notifyListeners();
  }
  void update() {

  }
}
class mausac with ChangeNotifier {
   Color color = Colors.red;
   void doimau1() {
     color = const Color(0xff22BB9B);
   }
   void doimau2() {
     color = Colors.white;
   }
}
void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => soluong()),
          ChangeNotifierProvider(create: (_)=> ProductProvider()),
        ],
      child:  const MaterialApp(
      title: 'Le Minh Hung',
      home: Dashboardscreen(),
      //Dashboardscreen(),
      debugShowCheckedModeBanner: false,
    ),
    )

  );
}


