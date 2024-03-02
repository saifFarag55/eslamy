import 'package:basics_1/category_widget.dart';
import 'package:flutter/material.dart';
import 'category.dart';
import 'title_widget.dart';

class HomeScreen extends StatelessWidget {
  List<Category> caregories = [];
  HomeScreen() {
    for (int i = 0; i < 100; i++) {
      if (i%2==0) {
        caregories.add(Category(
            TitleAPhoto: "Politics", LinkPhoto: "assets/images/Politics.jpg"));
      }else{
        caregories.add(Category(
            TitleAPhoto: "Sports", LinkPhoto: "assets/images/Sports.jpg"));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text (
            "Saif Farag",
          style: TextStyle(
            color: Colors.white,
            backgroundColor: Colors.deepPurple,
          ),
        ),
        leading: Icon( //دا الجزء اللي بيتحط علي الشمال بيكون اكتر الوقت فيه الرجوع للخبف
          Icons.settings,
          color: Colors.white,
        ),
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed("detailsCategory") ;
              },
              icon:Icon(
                Icons.holiday_village,
                color: Colors.white,
              )
          ),
          Icon(
            Icons.help,
            color: Colors.white,
          ),
          Icon(
            Icons.save_alt,
            color: Colors.white,
          )
        ],
      ),

      body:Column(
        children: [
          Row(
            children: [
              TitleWidget(title: "News"),
              SizedBox(width: 5,),

              TitleWidget(title: "Categories"),
            ],
          ),
          SizedBox(height: 6,),
          Expanded(
            flex: 3,
            child: GridView.builder(
              itemBuilder : (BuildContext context, int position)=>CategotyWidget(category:caregories[position]),
              itemCount: caregories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                childAspectRatio: 2/2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ) ,
              ),
          ),
        ],
      )


      /* Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TitleWidget(title: "News"),
              SizedBox(
                width: 2,
              ),
              TitleWidget(title: "Categories"),
            ],
          ),
          // SizedBox(height: 6,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Techonology",
                                LinkPhoto: "assets/images/Technology.jpg")),
                        SizedBox(
                          width: 5,
                        ),
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Cars",
                                LinkPhoto: "assets/images/the_cars.jpg")),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Tourism",
                                LinkPhoto: "assets/images/tourism.jpg")),
                        SizedBox(
                          width: 5,
                        ),
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Health",
                                LinkPhoto: "assets/images/the_health.png")),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Cooking",
                                LinkPhoto: "assets/images/Cooking.jpg")),
                        SizedBox(
                          width: 5,
                        ),
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Economy",
                                LinkPhoto: "assets/images/Economy.jpg")),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Eve",
                                LinkPhoto: "assets/images/Eve.jpg")),
                        SizedBox(
                          width: 5,
                        ),
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "KnowLedge",
                                LinkPhoto: "assets/images/Knowledge.jpg")),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Politics",
                                LinkPhoto: "assets/images/Politics.jpg")),
                        SizedBox(
                          width: 5,
                        ),
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Sports",
                                LinkPhoto: "assets/images/Sports.jpg")),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Techonology",
                                LinkPhoto: "assets/images/Technology.jpg")),
                        SizedBox(
                          width: 5,
                        ),
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Techonology",
                                LinkPhoto: "assets/images/Technology.jpg")),
                      ],
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Techonology",
                                LinkPhoto: "assets/images/Technology.jpg")),
                        SizedBox(
                          width: 5,
                        ),
                        CategotyWidget(
                            category: Category(
                                TitleAPhoto: "Techonology",
                                LinkPhoto: "assets/images/Technology.jpg")),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),*/
    );
  }
}

