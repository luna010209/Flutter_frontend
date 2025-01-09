
import 'package:flutter/material.dart';

class DietRecommendation{
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  Color boxColor;
  bool viewIsSelected;

  DietRecommendation({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calories,
    required this.boxColor,
    required this.viewIsSelected,
  });

  static List<DietRecommendation> getDiet(){
    List<DietRecommendation> recommendations = [];

    recommendations.add(
      DietRecommendation(
        name: 'Avocado',
        iconPath: 'images/icons/avocado.svg',
        level: 'Easy',
        duration: '30 mins',
        calories: '290 kCal',
        boxColor: Color(0xF0D8FD98),
        viewIsSelected: true,
      )
    );

    recommendations.add(
        DietRecommendation(
          name: 'Banana',
          iconPath: 'images/icons/banana.svg',
          level: 'Easy',
          duration: '30 mins',
          calories: '200 kCal',
          boxColor: Color(0xEAFDC8D0),
          viewIsSelected: true,
        )
    );

    recommendations.add(
        DietRecommendation(
          name: 'Cake',
          iconPath: 'images/icons/cake.svg',
          level: 'Hard',
          duration: '60 mins',
          calories: '350 kCal',
          boxColor: Color(0xF0D8FD98),
          viewIsSelected: false,
        )
    );

    recommendations.add(
        DietRecommendation(
          name: 'Chocolate',
          iconPath: 'images/icons/chocolate.svg',
          level: 'Hard',
          duration: '60 mins',
          calories: '400 kCal',
          boxColor: Color(0xEAFDC8D0),
          viewIsSelected: true,
        )
    );

    recommendations.add(
        DietRecommendation(
          name: 'Cookies',
          iconPath: 'images/icons/cookies.svg',
          level: 'Hard',
          duration: '90 mins',
          calories: '500 kCal',
          boxColor: Color(0xF0D8FD98),
          viewIsSelected: true,
        )
    );

    recommendations.add(
        DietRecommendation(
          name: 'Pancakes',
          iconPath: 'images/icons/pancakes.svg',
          level: 'Medium',
          duration: '20 mins',
          calories: '300 kCal',
          boxColor: Color(0xEAFDC8D0),
          viewIsSelected: false,
        )
    );

    recommendations.add(
        DietRecommendation(
          name: 'Pizza',
          iconPath: 'images/icons/pizza.svg',
          level: 'Hard',
          duration: '120 mins',
          calories: '700 kCal',
          boxColor: Color(0xF0D8FD98),
          viewIsSelected: true,
        )
    );

    recommendations.add(
        DietRecommendation(
          name: 'Sushi',
          iconPath: 'images/icons/sushi.svg',
          level: 'Easy',
          duration: '20 mins',
          calories: '180 kCal',
          boxColor: Color(0xEAFDC8D0),
          viewIsSelected: true,
        )
    );

    return recommendations;
  }
}