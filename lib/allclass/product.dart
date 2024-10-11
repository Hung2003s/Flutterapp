import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
   String _name;
   int _price;
   String _anh;
   int count;
  Product(this._name, this._price, this._anh, this.count);

  int get price => _price;

  set price(int value) {
    _price = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

   String get anh => _anh;

  set anh(String value) {
    _anh = value;
  }
  void addpr() {
    count++;
    notifyListeners();
  }
  void removepr() {
    if(count>0) {
      count--;
    }
    notifyListeners();
  }
}
