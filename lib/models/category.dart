import 'package:flutter/material.dart';

class CategoryModel{
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories= [];

    categories.add(
      CategoryModel(
          name: 'Chicken',
          iconPath: 'images/icons/chicken.png',
          boxColor: Color(0xE778FDFD)
      )
    );

    categories.add(
        CategoryModel(
            name: 'Bread',
            iconPath: 'images/icons/bread.png',
            boxColor: Color(0xEAEE99FF)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Ramen',
            iconPath: 'images/icons/ramen.png',
            boxColor: Color(0xE7FDE778)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Dumpling',
            iconPath: 'images/icons/dumpling.png',
            boxColor: Color(0xE778FD83)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Hotdog',
            iconPath: 'images/icons/hotdog.png',
            boxColor: Color(0xE7FD788C)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Juice',
            iconPath: 'images/icons/juice.png',
            boxColor: Color(0xE7789EFD)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Mashed Potato',
            iconPath: 'images/icons/mashed_potato.png',
            boxColor: Color(0xE7FDC378)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Milk',
            iconPath: 'images/icons/milk.png',
            boxColor: Color(0xEDC1FBEF)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Omelette',
            iconPath: 'images/icons/omelette.png',
            boxColor: Color(0xE7E2B0F3)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Salad',
            iconPath: 'images/icons/salad.png',
            boxColor: Color(0xE7F4B6B6)
        )
    );

    categories.add(
        CategoryModel(
            name: 'Sweet Potato',
            iconPath: 'images/icons/sweet_potato.png',
            boxColor: Color(0xF5B9FABA)
        )
    );

    return categories;
  }
}