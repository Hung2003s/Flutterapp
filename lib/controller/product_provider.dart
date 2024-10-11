import 'package:flutter/cupertino.dart';
import '../Model/image.dart';
import '../Model/product.dart';

class ProductProvider extends ChangeNotifier {
  final List<Product> _listProduct = [
    Product('Hot Tuna', 35, Images.anh4, 0,''),
    Product('Fried Squid', 54, Images.anh5, 0,''),
    Product('Spacy fresh crab', 0, Images.anh6, 0,'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .'),
    Product('Onagi sushi', 0, Images.anh7, 0,''),
    Product('Shrimp', 0, Images.anh8, 0,''),
  ];

  List<Product> get listProduct => _listProduct;

  void addpr(Product product) {
    product.countC++;
    notifyListeners();
  }
  void removepr(Product product) {
    if(product.countC > 0){
      product.countC--;
      notifyListeners();
    }
  }
  
}