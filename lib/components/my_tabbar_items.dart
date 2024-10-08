import 'package:flutter/material.dart';
import 'package:six/models/item.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    super.key,
    required this.tabController});

  List<Tab> _buildCategoryTabs(){
    return CategoryItems.values.map((category){
      return Tab(
        text: category.value.split('.').last,
      );

    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        
        isScrollable: true,
        controller: tabController,
        tabs: _buildCategoryTabs()),
    );
  }
}