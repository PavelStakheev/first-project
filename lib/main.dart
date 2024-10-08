import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:six/models/champions_lol.dart';
import 'package:six/models/items_lol.dart';
import 'package:six/models/news_lol.dart';
import 'package:six/models/runes_lol.dart';
import 'package:six/pages/home_page.dart';
import 'package:six/themes/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Champions_lol()),
        ChangeNotifierProvider(create: (context) => Items_lol()),
        ChangeNotifierProvider(create: (context) => Runes_lol()),
        ChangeNotifierProvider(create: (context) => News_lol())
        
      ],
     
       child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        home: MyHomePage(),
        theme: Provider.of<ThemeProvider>(context).themeData,
      ),);
      
    
  }
}

