import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:six/models/news_lol.dart';
import 'package:six/models/news_tile.dart';
import 'package:six/pages/page_of_news.dart';

class MyNews extends StatefulWidget {
  const MyNews({super.key});

  @override
  State<MyNews> createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<News_lol>(builder:(context, value, child) => 
    Scaffold(
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const Text('NEWS',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),
    
        const SizedBox(height: 20),
        Expanded(
          child: GridView.builder(
            
            itemCount: value.news.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            itemBuilder:(context, index) {
              final eachnews = value.news[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyTyleNews(
                  news: eachnews, 
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context) => MyNews1(news: eachnews)));}),
              );
            },),
        )
        
        ],
      ),
    ),
    )
    );
  }
}