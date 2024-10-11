import 'package:flutter/material.dart';
import 'package:foodapp/allclass/orderpr.dart';
import 'package:foodapp/screen/homepage/Man1/homepage.dart';


import '../../../allclass/product.dart';
import '../../../allclass/image.dart';
import '../Man4/payment.dart';
import 'oneelementorder.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  final List<Product> _listproduct = [
    Product('Hot Tuna' , 35, Images.anh4, 0),
    Product('Fried Squid' , 54, Images.anh5, 0),
    Product('Spacy fresh crab' , 0, Images.anh6, 0),
    Product('Onagi sushi' , 0, Images.anh7,0 ),
    Product('Shrimp' , 0, Images.anh8, 0),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column (
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25, top: 27),
                width: 328,
                height: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color(0xffFF9012),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_outlined), color: Colors.white,),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 4),
                      child: Text('Order details', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Rubik',
                        color: const Color(0xff181818).withOpacity(0.3)
                      ),),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                width: 325,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xffFF9012).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xffFF9012), width: 1)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 27),
                      child: const Text('Enjoy discount up to 50%', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFF9012),
                        fontSize: 14,
                      ),),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Container(
                width: 324,
                height: 262,
                margin: const EdgeInsets.only(left: 25),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Oneelementorder(ordersp: _listproduct[index+2]);
                    }
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: const EdgeInsets.only(left: 25),
                child: Text('---------------------------------------',style: TextStyle(
                  letterSpacing: 2,
                  color: const Color(0xff181818).withOpacity(0.2),
                  fontSize: 24
                ),),
              ),const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 328,
                height: 23,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text('Discount', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                        ),
                        Container(
                            width: 16, height: 16,
                            margin: const EdgeInsets.only(left: 16),
                            child: Image.asset('asset/smile.png')
                        ),
                      ],
                    ),
                    Text('\$ 20', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: const Color(0xff181818).withOpacity(0.5)
                        ),
                        )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 328,
                height: 23,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text('Total', style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                        ),
                        ),
                      ],
                    ),
                    Text('\$ 81', style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: const Color(0xff181818).withOpacity(0.5)
                    ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Payment();
                  }));
                },
               child: Container(
                margin: const EdgeInsets.only(left: 25),
                width: 325,
                height: 57,
                decoration: BoxDecoration(
                    color: const Color(0xffFF9012).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(16),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: const Text('Cashless', style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFFFF9012),
                              letterSpacing: 0.57,
                          ),
                          ),
                        ),
                        Container(
                            width: 16, height: 16,
                            margin: const EdgeInsets.only(left: 10),
                            child: Image.asset('asset/money.png')
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 32),
                      child: const Text('Detail', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Color(0xFFFF9012),
                      ),
                      ),
                    ),

                  ],
                ),
              ),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Homepage();
              }));
              },
        child:
              Container(
                width: 325,
                height: 57, margin: const EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                  color: const Color(0xff22BB9B),
                  borderRadius: BorderRadius.circular(16)
                  ),
                alignment: Alignment.center,
                child:  const Text('Check out', style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 0.50,
                  ),),
                ),
              )
            ],
          ),
        ));
  }
}




