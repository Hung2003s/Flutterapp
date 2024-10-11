import 'package:flutter/material.dart';
import '../../../Model/image.dart';
import '../../../Model/product.dart';
import '../homepage_screen/toolbar.dart';
import '../product_details/homepagephu.dart';
import 'oneelementhomepage1.dart';
import 'oneelementhomepage1_1.dart';


class Homepage1 extends StatefulWidget {
  const Homepage1({super.key});

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {

  int currentindex = 0;

  final List<String> title = <String>['All', 'Breakfast', 'Drink','Snack'];
  final List<Widget> icon1 = <Widget> [
    Container(),
    Image.asset('asset/icon1.png'),
    Image.asset('asset/icon2.png'),
    Image.asset('asset/icon3.png'),

  ];
  final List<Product> _listproduct = [
    Product('Hot Tuna', 35, Images.anh4, 10,''),
    Product('Fried Squid', 54, Images.anh5, 20,''),
    Product('Spacy fresh crab', 0, Images.anh6, 30,''),
    Product('Onagi sushi', 0, Images.anh7, 10,''),
    Product('Shrimp', 0, Images.anh8, 20,''),
  ];
  void navigateHome11(int index) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return Homepagephu(_listproduct[index]);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffE6E6E8).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  margin: const EdgeInsets.only(left: 25, right: 11, top: 25, bottom: 25),
                  width: 270,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            size: 24,
                          )),
                      const SizedBox(
                        width: 200,
                        height: 14,
                        child: TextField(
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff3B3B3B)),
                          decoration: InputDecoration.collapsed(
                            hintText: "Seafood",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffE6E6E8).withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16)
                    ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_list),
                )
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 25 , bottom: 25),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentindex = index;
                        });
                      },
                      child: Toolbar1(title1: title[index],icon2: icon1[index], selected: currentindex == index,)) ;
                },
        
              )
              ,
            ),
            Container(
              width: 323,
              height: 30,
              margin: const EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text('Recomended', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                      ),
                      Container(
                        width: 16, height: 16,
                          margin: const EdgeInsets.only(left: 16),
                          child: Image.asset('asset/icon4.png')
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('See all', style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                      )
                  )
        
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 225,
              margin: const EdgeInsets.only(left: 24, bottom: 25),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                    },
                    child: OneElementHomepage1(sanphamdexuat: _listproduct[index],),
                  );
                  } ),
            ),
            Container(
              width: 323,
              height: 30,
              margin: const EdgeInsets.only(bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text('People are looking for', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                      ),
                      Container(
                          width: 16, height: 16,
                          margin: const EdgeInsets.only(left: 16),
                          child: Image.asset('asset/fire.png')
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('See all', style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                      )
                  )
        
                ],
              ),
            ),
            Container(
        
              margin: const EdgeInsets.only(left: 25),
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        navigateHome11(index+2);
                      },
                      child: OneElementHomepage11(sanpham2: _listproduct[index+2],),
                    );
                  } ),
            )
          ],
        ),
      ),
    ));
  }
}




