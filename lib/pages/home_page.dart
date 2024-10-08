import 'package:flutter/material.dart';
import 'package:six/pages/champions_page.dart';
import 'package:six/pages/items_page.dart';
import 'package:six/pages/news_page.dart';
import 'package:six/pages/runes_page.dart';

import '../components/my_drawer.dart';

class MyHomePage extends StatefulWidget {
 
  const MyHomePage({
  super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _selectedIndex = 0;


  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;

    });
  }

  final List<Widget> _pages = [
 MyNews(),
 MyChampions(),
 MyItems(),
 MyRunesPage()
  ];


  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text('League of Legends',
        style: TextStyle(
        color: Theme.of(context).colorScheme.inversePrimary,
        
        ),),
      ),
      drawer: MyDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar:  BottomNavigationBar(
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.background,
        fixedColor: Theme.of(context).colorScheme.inversePrimary,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.newspaper),label: 'News'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Champions'),
        BottomNavigationBarItem(icon: Icon(Icons.work),label: 'Items'),
        BottomNavigationBarItem(icon: Icon(Icons.adjust),label: 'Runes'),
        ]),
      

    );
  }
}