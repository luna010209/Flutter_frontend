import 'package:flutter/material.dart';
import 'package:flutter_frontend/models/category.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<CategoryModel> categories = [];
  void _getCategories(){
    categories = CategoryModel.getCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      appBar: appBar(),
      body: Column(
          children: [
          _searchField(),
          SizedBox(height: 35,),
          _categories(),
          SizedBox(height: 35,),

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
              fontSize: 20,
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
}
