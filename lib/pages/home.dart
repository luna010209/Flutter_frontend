import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        children: [
          Container(
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
          )
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
}
