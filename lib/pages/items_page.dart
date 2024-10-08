import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:six/components/my_tabbar_items.dart';
import 'package:six/models/item.dart';
import 'package:six/models/items_lol.dart';
import 'package:six/models/items_tile.dart';
import 'package:six/models/runes.dart';

class MyItems extends StatefulWidget {
  const MyItems({super.key});

  @override
  State<MyItems> createState() => _MyItemsState();
  
}

class _MyItemsState extends State<MyItems> with SingleTickerProviderStateMixin{
late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(length: CategoryItems.values.length, vsync: this);
  }

  @override
  void dispose(){
    
    _tabController.dispose();
    super.dispose();
  }
  
  //sort out and return a list of food items that belong to a specific category
  //отсортировать и вернуть список типов предметов, относящихся к определенной категории

  List<Item> _filterMenuByCategory(CategoryItems category, List<Item> menuItems){
    return menuItems.where((item) => item.categoryItems == category).toList();
  }
 
List<Widget> getItemInThisCategory(List<Item> menuItems){
  return CategoryItems.values.map((category) {
   List<Item> categoryItems = _filterMenuByCategory(category, menuItems);
   return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5), 
    itemCount: categoryItems.length,
    itemBuilder:(context, index) {
      final items = categoryItems[index];
      return MyTileItems(
        items: items, 
        onTap: (){});
    },);
  }).toList();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:(context, innerBoxIsScrolled) => [
            SliverAppBar(
            title: MyTabBar(tabController: _tabController),
            titleSpacing: -10,
             )
            ],
            body:  Consumer<Items_lol>(builder:(context, value, child) => 
            TabBarView(
              controller: _tabController,
              children: getItemInThisCategory(value.items)
            )
            )
        )
    );
  }
}