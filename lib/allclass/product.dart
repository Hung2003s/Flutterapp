class Product {
   String _name;
   int _price;
   String _anh;

  Product(this._name, this._price, this._anh);

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
}
