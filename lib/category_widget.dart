import 'package:flutter/material.dart';

import 'category.dart';

class CategotyWidget extends StatelessWidget {

  Category category;
   CategotyWidget({super.key , required this.category});

  @override
  Widget build(BuildContext context) {
    return  Stack(
    //  alignment: Alignment.bottomRight,

      children: [
        //Image(image: AssetImage("assets/images/photo_test.jpg")),
        Image.asset(
            category.LinkPhoto,
          height: 150,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Container(
          padding: EdgeInsets.all(5),
          color: Color(0xc5a13ed9),
          margin: EdgeInsets.only(right: 5,bottom: 5),
          child: Text(
            category.TitleAPhoto,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )

      ],
    );
  }
}
