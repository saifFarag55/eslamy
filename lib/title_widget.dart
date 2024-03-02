import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  String title;
   TitleWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          color: Color(0xffa13ed9),

          child:  Text(title,
            textAlign: TextAlign.center, //دي علشان يبقي الكلام في النص
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,//دي علشان يبقي الكلام طالع لبره شويه
            ),

          )),
    );
  }
}
