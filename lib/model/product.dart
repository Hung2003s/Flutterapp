class Product {
   String _name;
   int _price;
   String _image;
   int _countC ;
   String _description;

   Product(this._name, this._price, this._image, this._countC, this._description);

   String get description => _description;

  set description(String value) {
    _description = value;
  }

  int get countC => _countC;

  set countC(int value) {
    _countC = value;
  }

  String get image => _image;

  set image(String value) {
    _image = value;
  }

  int get price => _price;

  set price(int value) {
    _price = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
