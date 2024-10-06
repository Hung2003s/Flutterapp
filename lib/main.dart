import 'package:flutter/material.dart';
import 'package:foodapp/dashboardscreen.dart';
import 'package:provider/provider.dart';

class soluong with ChangeNotifier {
  int _count = 10;
  int get count => _count;
  void add() {
    _count++;
    notifyListeners();
  }
  void remove() {
    _count--;
    notifyListeners();
  }
}

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => soluong()),
        ],
      child:  MaterialApp(
      title: 'Le Minh Hung',
      home: Dashboardscreen(),
      //Dashboardscreen(),
      debugShowCheckedModeBanner: false,
    ),
    )

  );
}


