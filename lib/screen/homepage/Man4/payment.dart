import 'package:flutter/material.dart';

import '../Man1/homepage.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25, top: 25),
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
                    child: Text('Cashless', style: TextStyle(
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
              height: 28,
            ),
            Container(
              width: 209,
              height: 85,
              margin: const EdgeInsets.only(left: 25),
              child: const Text(
                'Select your \npayment method',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Rubik',
                  color: Color(0xFF22BB9B),
                  letterSpacing: 0.86,

                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 51),
              width: 299,
              height: 57,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height:20,
                    child: Image.asset('asset/visa.png'),
                  ),
                  Container(
                    width: 215,
                    height: 57,
                    padding: const EdgeInsets.only(left: 38),
                    alignment: AlignmentDirectional.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xffE6E6E8).withOpacity(0.3),
                    ),
                    child: TextField(
                      readOnly: false,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff181818).withOpacity(0.3)
                      ),
                      decoration: const InputDecoration.collapsed(
                        hintText: "234 9781 8465 ****",
                      ),

                    ),
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
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffE6E6E8).withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height:20,
                    margin: const EdgeInsets.only(left: 28),
                    child: Image.asset('asset/OVO.png'),
                  ),
                  Container(
                    width: 215,
                    height: 57,
                    padding: const EdgeInsets.only(left: 38),
                    alignment: AlignmentDirectional.center,

                    child: TextField(
                      readOnly: false,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff181818).withOpacity(0.3)
                      ),
                      decoration: const InputDecoration.collapsed(
                        hintText: "2121 6352 8465 ****",
                      ),

                    ),
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
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffE6E6E8).withOpacity(0.3),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48,
                    height:20,
                    margin: const EdgeInsets.only(left: 28),
                    child: Image.asset('asset/gopay.png'),
                  ),
                  Container(
                    width: 215,
                    height: 57,
                    padding: const EdgeInsets.only(left: 38),
                    alignment: AlignmentDirectional.center,

                    child: TextField(
                      readOnly: false,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff181818).withOpacity(0.3)
                      ),
                      decoration: const InputDecoration.collapsed(
                        hintText: "3827 1231 8465 ****",
                      ),

                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 263,
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
            ),

          ],
        ),
        )
    );
  }
}
