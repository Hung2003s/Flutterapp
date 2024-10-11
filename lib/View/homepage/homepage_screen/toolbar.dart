import 'package:flutter/cupertino.dart';

class Toolbar1 extends StatefulWidget {
  final String title1 ;
  final Widget icon2;
  final bool selected;
  const Toolbar1({super.key, required this.title1, required this.icon2, required this.selected});

  @override
  State<StatefulWidget> createState() => _Toolbar1State();

}
class _Toolbar1State extends State<Toolbar1> {

  @override
  Widget build(BuildContext context) {

    return Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.selected ? const Color(0xffFF9012) : const Color(0xffFF9012).withOpacity(0.1),


        ),
        margin: const EdgeInsets.all(3),
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.icon2,
            Text(widget.title1,
              style: TextStyle(
                  color: widget.selected ? const Color(0xffF5F6F8) : const Color(0xffFF9012),
                  fontSize: 12,
                  fontWeight: FontWeight.w500
              ),),
          ],
        )

    );

  }

}