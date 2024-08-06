import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Toolbar1 extends StatefulWidget {
  final String title1 ;
  final Widget icon2;
  final bool selected;
  Toolbar1({required this.title1, required this.icon2, required this.selected});

  @override
  State<StatefulWidget> createState() => _Toolbar1State();

  }
class _Toolbar1State extends State<Toolbar1> {

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: widget.selected ? Color(0xffFF9012) : Color(0xffF5F6F8),
        border: Border.all(color: Color(0xb081430e), width: 1),

      ),
      margin: EdgeInsets.all(3),
      child: Row (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          widget.icon2,
          Text(widget.title1,
          style: TextStyle(
            color: widget.selected ? Color(0xffF5F6F8) : Color(0xffFF9012)
          ),),
        ],
      )

      );

  }

}
