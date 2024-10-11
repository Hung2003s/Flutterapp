import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:foodapp/Model/product.dart';
import 'package:foodapp/controller/product_provider.dart';
import '../../../Model/image.dart';
import '../homepage_screen/homepage.dart';
import '../payment_screen/payment.dart';
import 'package:provider/provider.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  List<Product> listProduct = [];
  @override
  void initState() {
    super.initState();
    listProduct = context.read<ProductProvider>().listProduct;
  }
  @override
  Widget build(BuildContext context) {
    // final productList = context.watch<ProductProvider>().listProduct;

      return SafeArea(
          child: Scaffold(
            body: Column(
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
                            borderRadius: BorderRadius.circular(16)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios_new_outlined),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: Text(
                          'Order details',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Rubik',
                              color: const Color(0xff181818).withOpacity(0.3)),
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
                  height: 50,
                  decoration: BoxDecoration(
                      color: const Color(0xffFF9012).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          color: const Color(0xffFF9012), width: 1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 27),
                        child: const Text(
                          'Enjoy discount up to 50%',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFF9012),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      // final item = productList[index];
                      final item =     Product('Hot Tuna', 35, Images.anh4, 0,'')
                      ;
                      return item.countC != 0
                          ? Padding(
                        padding: const EdgeInsets.only(top: 10, left: 20),
                        child: Slidable(
                          key: Key('$item'),
                          endActionPane: ActionPane(
                              extentRatio: 0.2,
                              motion: const ScrollMotion(),
                              children: [
                                SlidableAction(
                                  flex: 1,
                                  onPressed: (context) {},
                                  backgroundColor: Colors.red,
                                  icon: Icons.delete,
                                )
                              ]),
                          child: Row(
                            children: [
                              Container(
                                height: 62,
                                width: 62,
                                decoration: BoxDecoration(
                                  color: const Color(0xffff9012)
                                      .withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset(item.image),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    item.name,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Waroenk kita',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: const Color(0xFF3B3B3B)
                                          .withOpacity(0.3),
                                    ),
                                  ),
                                  Text('\$${item.price.toString()}'),
                                ],
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<ProductProvider>()
                                      .removepr(item);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF22BB9B)
                                        .withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 30,
                                  width: 30,
                                  child: const Icon(
                                    Icons.remove_outlined,
                                    color: Color(0xFF22BB9B),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${item.countC}',
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.read<ProductProvider>().addpr(item);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF22BB9B),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  height: 30,
                                  width: 30,
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                          : Container();
                    },
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: Text(
                    '---------------------------------------',
                    style: TextStyle(
                        letterSpacing: 2,
                        color: const Color(0xff181818).withOpacity(0.2),
                        fontSize: 24),
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
                      Row(
                        children: [
                          const Text(
                            'Discount',
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Container(
                              width: 16,
                              height: 16,
                              margin: const EdgeInsets.only(left: 16),
                              child: Image.asset('asset/smile.png')),
                        ],
                      ),
                      Text(
                        '\$ 20',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: const Color(0xff181818).withOpacity(0.5)),
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
                          Text(
                            'Total',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '\$ 81',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: const Color(0xff181818).withOpacity(0.5)),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const Payment();
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
                              child: const Text(
                                'Cashless',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Color(0xFFFF9012),
                                  letterSpacing: 0.57,
                                ),
                              ),
                            ),
                            Container(
                                width: 16,
                                height: 16,
                                margin: const EdgeInsets.only(left: 10),
                                child: Image.asset('asset/money.png')),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 32),
                          child: const Text(
                            'Detail',
                            style: TextStyle(
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return const Homepage();
                    }));
                  },
                  child: Container(
                    width: 325,
                    height: 57,
                    margin: const EdgeInsets.only(left: 25),
                    decoration: BoxDecoration(
                        color: const Color(0xff22BB9B),
                        borderRadius: BorderRadius.circular(16)),
                    alignment: Alignment.center,
                    child: const Text(
                      'Check out',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: 0.50,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ));

  }


}


