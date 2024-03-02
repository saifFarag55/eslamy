import 'package:flutter/material.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Category Details"),
      ) ,
      body: Center(child:
      Text(
          "hellow",
           style: TextStyle(
             fontSize: 100,
           backgroundColor: Colors.purple,
           color: Colors.white,)

      )
      ),
    );
  }
}
