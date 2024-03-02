

import 'package:basics_1/category_details_screen.dart';
import 'package:basics_1/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Saif Farag",
        debugShowCheckedModeBanner: false,
        routes: {
          "home":(BuildContext context)=>HomeScreen(),
          "detailsCategory":(BuildContext context)=>CategoryDetailsScreen(),
        },

        home: HomeScreen()
    );
  }

}


