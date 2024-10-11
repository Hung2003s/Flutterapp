import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/allclass/orderpr.dart';

import '../../../allclass/product.dart';
import 'package:provider/provider.dart';

import '../../../main.dart';

class Oneelementorder extends StatefulWidget {

  Product ordersp;

  Oneelementorder({super.key, required this.ordersp});

  @override
  State<Oneelementorder> createState() => _OneelementorderState();
}

class _OneelementorderState extends State<Oneelementorder> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 325,
      height: 64,
      margin: const EdgeInsets.only(bottom: 35),
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
                color: const Color(0xffFF9012).withOpacity(0.2),
                borderRadius: BorderRadius.circular(16)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset(widget.ordersp.anh, fit: BoxFit.cover,width: 24, height: 24, ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35, right: 11),
            width: 124,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.ordersp.name, style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Rubik',
                    letterSpacing: 0.5,
                    color: Color(0xff181818)
                ),),
                const Text('Waroenk kita', style: TextStyle(
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                  letterSpacing: 0.43,
                  color: Color(0xff3B3B3B),
                ),),
                const Text('\$ 35', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.57
                ),)
              ],
            ),
          ),
          SizedBox(
            width: 92,
            height: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 26,
                  height: 26,
                  // margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      color: const Color(0xff22BB9B).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    onPressed: () {
                       context.read<Product>().removepr();
                    },
                    icon: const Icon(Icons.remove, size: 10,),
                    color: const Color(0xff22BB9B),
                    autofocus: true,
                  ),
                ),
                Container(
                  width: 20,
                  height: 24,
                  alignment: Alignment.center,
                  child: Text(
                    context.watch<Product>().count.toString(),
                    style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff181818),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.57,
                  ),),
                ),
                Container(
                  // margin: const EdgeInsets.only(left: 21),
                  width: 26,
                  height: 26,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xff22BB9B),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    onPressed: () {
                      context.read<Product>().addpr();
                    },
                    icon: const Icon(Icons.add, size: 10,),
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