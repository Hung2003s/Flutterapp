import 'package:flutter/material.dart';
import '../../../Model/product.dart';


class OneElementHomepage1 extends StatelessWidget {
  final Product sanphamdexuat;


  const OneElementHomepage1({super.key, required this.sanphamdexuat});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.only(right: 21),
      width: 176,
      height: 225,
      child: Stack(
        children: [
          Positioned(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                  children: [
                    Container(
                      width: 176,
                      height: 225,
                      decoration: const BoxDecoration(
                      ),
                      child: Image.asset(sanphamdexuat.image, fit: BoxFit.cover,),
                    ),
                    Container(
                      width: 176,
                      height: 225,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.6)
                      ),

                    ),
                  ]
              ),
            ),
          ),

          Positioned(
            top:190,
            left: 20,
            child: Text(sanphamdexuat.name, style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              fontSize: 12,
            ),),
          ),


        ],
      ),

    );
  }

}