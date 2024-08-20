import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/sanpham/oneelement_hompage.dart';
import 'package:foodapp/sanpham/product.dart';
import 'package:foodapp/toolbar1.dart';
import '../image.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> title = <String>['All', 'Breakfast', 'Drink','Snack'];
  final List<Widget> icon1 = <Widget> [
    Container(),
    FaIcon(FontAwesomeIcons.burger, color: Colors.orange),
    FaIcon(FontAwesomeIcons.martiniGlassCitrus, color: Colors.orange),
    FaIcon(FontAwesomeIcons.cookie, color: Colors.orange)
  ];

  int currentindex = 0;

  List<Product> _listproduct = [
    Product('Beef Steak chicken nugget', 35, Images.anh2),
    Product('Onagi Sushi', 54, Images.anh3)
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
    child: Scaffold(
      body:
      Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hello',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                    ),
                    Row(
                      children: [
                        Text('Anastasya', style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18
                        ),
                        ),
                        IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.waving_hand,
                              size: 24,
                              color: Colors.orange,
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15, bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xff22BB9B).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)

                ),
                child:
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart_outlined,
                    color: Color(0xff22BB9B),)
                ),
              )
            ],
          ),

          Container(
            margin: EdgeInsets.only(right: 15, top: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xff47c1ae) ,width: 1),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search,
                      size: 24,)
                  ),
                ),
                Container(
                  width: 300,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3B3B3B).withOpacity(0.5)
                    ),
                    decoration: InputDecoration.collapsed(
                      hintText: "Find your whereabouts",
                    ),
                  ),
                )

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
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
            margin: EdgeInsets.only(top: 10, bottom: 10),

              width: 326,
              height: 164,
              child: Image(
              image: AssetImage('asset/Anh1.png'),
          )
          ),
          Container(
            width: 323,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(

                  children: [
                    Text('Seafood', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5),
                        child: FaIcon(FontAwesomeIcons.shrimp, color: Colors.red,size: 16,)),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text('See all', style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                    ),
                    )
                )

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 15),
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

