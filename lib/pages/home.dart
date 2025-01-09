import 'package:flutter/material.dart';
import 'package:flutter_frontend/models/category.dart';
import 'package:flutter_frontend/models/diet.dart';
import 'package:flutter_frontend/models/popular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];
  List<DietRecommendation> diets = [];
  List<PopularMenu> popular = [];
  void _getInfo(){
    categories = CategoryModel.getCategories();
    diets = DietRecommendation.getDiet();
    popular = PopularMenu.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    _getInfo();
    return Scaffold(
      appBar: appBar(),
      body: ListView(
        children: [
          _searchField(),
          SizedBox(height: 35,),
          _categories(),
          SizedBox(height: 35,),
          _diets(),
          SizedBox(height: 35,),
          _popular(),
        ],
      ),
    );
  }

  AppBar appBar(){
    return AppBar(
        title: Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        // elevation: 0.0,
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.only(left: 15, top: 8, bottom: 8),
          // alignment: Alignment.center,
          width: 40,
          decoration: BoxDecoration(
              color: Color(0xDADADAFF),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Icon(
              // icon: FaIcon(FontAwesomeIcons.chevronLeft),
              // onPressed: () { ("Pressed"); },
              // iconSize: 18,
              Icons.arrow_back_ios_new_rounded,
              size: 20,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(right: 18, top:8, bottom: 8),
              width: 40,
              decoration: BoxDecoration(
                  color: Color(0xDADADAFF),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                  child: Icon(
                    Icons.more_vert_rounded,
                    size: 20,
                  )
              ),
            ),
          )
        ]
    );
  }

  // Body of app
  Container _searchField(){
    return Container(
      margin: EdgeInsets.only(top: 40, left: 25, right: 25),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xACABABFF),
              blurRadius: 5,
              spreadRadius: 0.0
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search Bread',
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.all(15),
          prefixIcon: Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.search_outlined, size: 30,),
          ),
          suffixIcon: Icon(Icons.filter_list_alt, size: 30,),
        ),
      ),
    );
  }

  Column _categories(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            'Category',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 150,
          child: ListView.separated(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index)=> SizedBox(width: 20,),
              padding: EdgeInsets.only(left: 30, right: 30),
              itemBuilder: (context, index){
                return Container(
                  width: 120,
                  decoration: BoxDecoration(
                    color: categories[index].boxColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5),
                            child: Image.asset(categories[index].iconPath),
                          )
                      ),
                      Text(
                        categories[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                );
              }
          ),
        )
      ],
    );
  }

  Column _diets(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 25),
          child: Text(
            'Recommendation for diet',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
              color: Colors.black,
            ),
          ),
        ),
        SizedBox(height: 20,),
        Container(
          height: 250,
          child: ListView.separated(
            itemCount: diets.length,
            separatorBuilder: (context, index) => SizedBox(width: 20,),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 30, right: 30),
            itemBuilder: (context, index) {
              return Container(
                width: 240,
                decoration: BoxDecoration(
                    color: diets[index].boxColor,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(diets[index].iconPath, width: 90, height: 90,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          diets[index].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          diets[index].level + ' | ' + diets[index].duration + ' | ' + diets[index].calories,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 45, width: 150,
                      child: Center(
                        child: Text(
                          'View',
                          style: TextStyle(
                              color: diets[index].viewIsSelected ? Colors.white:Colors.transparent,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                diets[index].viewIsSelected ? Colors.lightBlue.shade200 : Colors.transparent,
                                diets[index].viewIsSelected ? Colors.lightBlue.shade300 : Colors.transparent,
                                diets[index].viewIsSelected ? Colors.lightBlue.shade500 : Colors.transparent,
                              ]
                          )
                      ),
                    )
                  ],
                ),
              );
            },

          ),
        )
      ],
    );
  }

  Column _popular(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Popular Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(height: 20),
        ListView.separated(
          itemCount: popular.length,
          separatorBuilder: (context, index)=> SizedBox(height: 20,),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.only(left: 30, right: 30),
          itemBuilder: (context, index){
            return Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(popular[index].iconPath, width: 60,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popular[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        popular[index].level + ' | '+ popular[index].duration+ ' | '+ popular[index].calories,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Icon(Icons.arrow_forward_ios_rounded),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: popular[index].boxColor,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(0, 10),
                      blurRadius: 40,
                    )
                  ]
              ),
            );
          },
        ),
      ],
    );
  }
}
