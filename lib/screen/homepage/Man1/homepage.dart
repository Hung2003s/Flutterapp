import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/screen/homepage/Man1/toolbar.dart';

import '../../../allclass/image.dart';
import '../../../allclass/product.dart';
import '../Man2/homepage1_1.dart';
import '../orderdetails.dart';
import 'oneelementhomepage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> title = <String>['All', 'Breakfast', 'Drink','Snack'];
  final List<Widget> icon1 = <Widget> [
    Container(),
    Image.asset('asset/icon1.png'),
    Image.asset('asset/icon2.png'),
    Image.asset('asset/icon3.png'),
  ];
  final List<Product> _listproduct = [
    Product('Beef Steak chicken nugget', 35, Images.anh2),
    Product('Onagi Sushi', 54, Images.anh3)
  ];

  void navigateHome2() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return const Homepage1();
    }));
  }
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
    child: Scaffold(
      body:
      Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 27, right: 180, top: 7,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hello',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    ),
                    Row(
                      children: [
                        const Text('Anastasya', style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                        ),
                        ),
                        Container(
                          height: 18,
                          width: 18,
                          margin: const EdgeInsets.only(),
                          child: const IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.waving_hand,
                                size: 18,
                                color: Colors.orange,
                              )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 45,
                height: 45,
                margin: const EdgeInsets.only(right: 30, ),
                decoration: BoxDecoration(
                    color: const Color(0xff22BB9B).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)
                ),
                child:
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Orderdetails();
                      }));
                    },
                    icon: const Icon(Icons.add_shopping_cart_outlined,
                    color: Color(0xff22BB9B),)
                ),
              )
            ],
          ),

          Container(
            width: 325,
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            decoration: BoxDecoration(
              color: const Color(0xFFE6E6E8).withOpacity(0.3),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search,
                    size: 24,)
                ),
                SizedBox(
                  width: 250,
                  child: TextField(
                    readOnly: true,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff3B3B3B).withOpacity(0.5)
                    ),
                    decoration: const InputDecoration.collapsed(
                      hintText: "Find your whereabouts",
                    ),
                    onTap: navigateHome2,
                  ),
                )

              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, bottom: 25),
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: icon1.length,
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
            margin: const EdgeInsets.symmetric(horizontal: 25),
              width: 326,
              child: const Image(
              image: AssetImage('asset/Anh1.png'),
          )
          ),
          SizedBox(
            width: 323,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text('Seafood', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const FaIcon(FontAwesomeIcons.shrimp, color: Colors.red,size: 16,)),
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
            margin: const EdgeInsets.only(left: 15, top: 15),
            width: MediaQuery.of(context).size.width,
            height: 230,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: _listproduct.length,
                itemBuilder: (BuildContext context, int index) {
                return OneelementHompage(sanpham: _listproduct[index]);
                }
                )
          ),
        ],
      ),
    ),
      );
  }
}





