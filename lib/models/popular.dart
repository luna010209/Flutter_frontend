import 'package:flutter/material.dart';

class PopularMenu{
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  Color boxColor;

  PopularMenu({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.boxColor,
  });

  static getPopular(){
    List<PopularMenu> popular = [];

    popular.add(
      PopularMenu(
        name: 'Korean BBQ',
        iconPath: 'images/icons/popular/bbq.png',
        level: 'Easy',
        duration: '25 mins',
        calories: '230 kCal',
        boxColor: Colors.orange.shade100,
      )
    );

    popular.add(
        PopularMenu(
          name: 'Bibimbap',
          iconPath: 'images/icons/popular/bibimbap.png',
          level: 'Hard',
          duration: '35 mins',
          calories: '270 kCal',
          boxColor: Colors.purple.shade100,
        )
    );

    popular.add(
        PopularMenu(
          name: 'Chicken',
          iconPath: 'images/icons/popular/chicken.png',
          level: 'Easy',
          duration: '20 mins',
          calories: '170 kCal',
          boxColor: Colors.blue.shade100,
        )
    );

    popular.add(
        PopularMenu(
          name: 'Bean cake',
          iconPath: 'images/icons/popular/fav.png',
          level: 'Medium',
          duration: '40 mins',
          calories: '390 kCal',
          boxColor: Colors.green.shade100,
        )
    );

    popular.add(
        PopularMenu(
          name: 'Fish cake',
          iconPath: 'images/icons/popular/fishcake.png',
          level: 'Easy',
          duration: '25 mins',
          calories: '209 kCal',
          boxColor: Colors.red.shade100,
        )
    );

    popular.add(
        PopularMenu(
          name: 'Hotok',
          iconPath: 'images/icons/popular/hotok.png',
          level: 'Medium',
          duration: '50 mins',
          calories: '400 kCal',
          boxColor: Colors.brown.shade100,
        )
    );

    popular.add(
        PopularMenu(
          name: 'Kimchi',
          iconPath: 'images/icons/popular/kimchi.png',
          level: 'Easy',
          duration: '10 mins',
          calories: '130 kCal',
          boxColor: Colors.grey.shade100,
        )
    );

    popular.add(
        PopularMenu(
          name: 'Tokbokki',
          iconPath: 'images/icons/popular/tokbokki.png',
          level: 'Hard',
          duration: '70 mins',
          calories: '400 kCal',
          boxColor: Colors.deepOrange.shade100,
        )
    );

    return popular;
  }
}