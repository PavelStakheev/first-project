import 'package:flutter/material.dart';

class Item with ChangeNotifier{

  final String name;
  final String imgPath;
  final double price;
  final String description;
  final CategoryItems categoryItems;

  Item({
    required this.name,
    required this.imgPath,
    required this.description,
    required this.price,
    required this.categoryItems

  });

  
}

enum CategoryItems {

initial('Initials items'),
consumable('Consumable items'),
accessories('Accessories items'),
basic('Basics items'),
footwear('Footwears'),
epic('Epics items'),
legendary('Legendary items');

const CategoryItems(this.value);
final String value;

    
}