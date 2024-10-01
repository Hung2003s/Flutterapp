import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/screen/homepage/orderdetails.dart';

import '../../allclass/product.dart';

class Homepagephu extends StatefulWidget {


  Product sp3;
  Homepagephu( this.sp3, {super.key});

  @override
  State<Homepagephu> createState() => _HomepagephuState();
}
class _HomepagephuState extends State<Homepagephu> {
  int index = 0;
  List<Widget> secondscreen = [
    Orderdetails()
  ];
  int currentindex = 0;
  void _chon(int index) {
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 406,
            color: const Color(0xffFF9012).withOpacity(0.1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 38, left: 26),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffFF9012),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_outlined),
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 38, right: 35),
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: const Color(0xff22BB9B), width: 1 )
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.solidHeart),
                        color: const Color(0xff22BB9B),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 164,
                  height: 164,
                  child: Image.asset(widget.sp3.anh,fit: BoxFit.cover,),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24),
            width: 207,
            height: 44,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 36,
                  height: 36,
                    decoration: BoxDecoration(
                        color: const Color(0xffFF9012),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Text(
                        'W',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.50,
                        ),
                      )
                  ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.sp3.name, style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xff181818),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Rubik',
                      ),),
                      const Text('Waroenk kita', style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0xff181818),
                        fontSize: 14,
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            width: 326,
            height: 80,
            child: const Text(
              'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . '
            ,style: TextStyle(
              fontSize: 12,
              color: Color(0xff181818),
              fontWeight: FontWeight.w400,
            ),),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            width: 178,
            height: 20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 54,
                  height: 18,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.stars_rounded, size: 20,),
                      Text('6.8', style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff181818)
                      ),)
                      
                    ],
                  ),
                ),
                SizedBox(
                  width: 94,
                  height: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.place_outlined, size: 20,),
                      Text('Kh. Arifin', style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff181818)
                      ),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25),
            width: 325,
            height: 53,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 54,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Price', style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff181818)
                      ),),
                      Text('\$ 35', style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff181818)
                      ),)
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return Orderdetails();
                      }));
                    },
                    icon: const Icon(Icons.shopping_cart), color: const Color(0xff22BB9B),)
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            margin: const EdgeInsets.only(left: 86),
            width: 200,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xff22BB9B).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          index -= 1;
                          if (index < 0) {
                            index = 0;
                          }
                        });
                      },
                      icon: const Icon(Icons.remove),
                      color: const Color(0xff22BB9B),
                  ),
                ),
                Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: Text('$index', style: const TextStyle(
                    fontSize: 24,
                    color: Color(0xff181818),
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: const Color(0xff22BB9B),
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          index += 1;
                        });
                      },
                      icon: const Icon(Icons.add),
                      color: Colors.white ,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}