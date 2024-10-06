


import 'package:flutter/material.dart';

import '../../../allclass/product.dart';

class OneelementHompage extends StatelessWidget {

  final Product sanpham;

  const OneelementHompage({super.key, required this.sanpham});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFF9012).withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(left: 20),
      width: 200,
      height: 230,
      child: Column(
        children: [
          Container(
            width: 76,
            height: 108,
            margin: const EdgeInsets.only(top: 5),
            decoration: const BoxDecoration(
                color: Colors.white
            ),
            child: Image.asset(sanpham.anh,fit: BoxFit.cover, ),
          ),
          Container(
            width: 122,
            height: 50,
            margin: const EdgeInsets.only(top: 10),
            child: Text(' ${sanpham.name}', style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xFF181818),
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Text(' \$ ${sanpham.price}', style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),)),
              Container(
                width: 24,
                height: 24,
                margin: const EdgeInsets.only(right: 16, bottom: 16),
                decoration: BoxDecoration(
                    color: const Color(0xff22BB9B),
                    borderRadius: BorderRadius.circular(5)
                ),
                child: IconButton(
                    onPressed: () {},
                    autofocus: true,
                    padding: const EdgeInsets.only(right: 3),
                    icon: const Icon(Icons.add, size: 24,color: Colors.white,)
                ),
              )
            ],
          )
        ],
      ),
    );
  }

}