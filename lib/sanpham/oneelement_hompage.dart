import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/sanpham/product.dart';

class OneelementHompage extends StatelessWidget {

  Product sanpham;

  OneelementHompage({required this.sanpham});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFF9012).withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(left: 20),
      width: 200,
      height: 230,
      child: Column(
        children: [
          Container(
            width: 76,
            height: 108,
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Image.asset(sanpham.anh,fit: BoxFit.cover, ),
          ),
          Container(
            width: 122,
            height: 50,
            margin: EdgeInsets.only(top: 10),
            child: Text(' ${sanpham.name}', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(child: Text(' \$ ${sanpham.price}', style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),)),
              Container(
                margin: EdgeInsets.only(right: 3, bottom: 3),
                  decoration: BoxDecoration(
                    color: Color(0xff22BB9B),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, size: 20,)
                  ),
              )
            ],
          )
        ],
      ),
    );
  }

}