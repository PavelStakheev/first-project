import 'package:flutter/material.dart';
import 'item.dart';

class Items_lol extends ChangeNotifier{

final List<Item> _items =[
 //initial
  Item(
  name: 'Doran\'s blade', 
  imgPath: 'assets/item1.png', 
  description: 'Gives: 8 attack power 3.5% vampirism 80 health', 
  price: 450, 
  categoryItems: CategoryItems.initial),
  Item(
  name: 'Doran\'s ring', 
  imgPath: 'assets/ring_doran.png', 
  description: 'Restores 1.25 mana every second. If the mana reserve is full or the owner does not use mana, then health is restored in the amount of 45% of this value.The owner\'s auto attacks deal an additional 5 physical damage to the minions', 
  price: 450, 
  categoryItems: CategoryItems.initial),
  //consumable
  Item(
  name: 'A Health Potion', 
  imgPath: 'assets/zele_hp.png', 
  description: 'Restores 5 health every 0.5 seconds for 15 seconds; 150 health in total.', 
  price: 50, 
  categoryItems: CategoryItems.consumable),
  Item(
  name: 'The totem of control', 
  imgPath: 'assets/totem.png', 
  description: 'Sets the visible control totem at the specified point. \n Range: 600', 
  price: 75, 
  categoryItems: CategoryItems.consumable),
  //
  

];

List<Item> get items => _items;


}