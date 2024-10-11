import 'package:flutter/material.dart';
import '../../../Model/product.dart';
import 'package:provider/provider.dart';
import '../../../main.dart';

class OneElementHomepage11 extends StatelessWidget {
  Product sanpham2;
  OneElementHomepage11({super.key, required this.sanpham2});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 25),
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
                  child: Image.asset(sanpham2.image, fit: BoxFit.cover,width: 24, height: 24, ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(sanpham2.name, style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),),
                const Text("Waroenk kita", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),)
              ],
            ),
          ),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                color: const Color(0xff22BB9B),
                borderRadius: BorderRadius.circular(5)
            ),
            child: IconButton(
                onPressed: () {
                  context.read<soluong>().add();
                },
                autofocus: true,
                padding: const EdgeInsets.only(right: 3),
                icon: const Icon(Icons.add, size: 24,color: Colors.white,)
            ),
          )
        ],
      ),

    );
  }

}