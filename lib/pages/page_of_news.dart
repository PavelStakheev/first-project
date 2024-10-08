import 'package:flutter/material.dart';
import 'package:six/models/news.dart';

class MyNews1 extends StatefulWidget {
  final News news;
  const MyNews1({
  super.key,
  required this.news});

  @override
  State<MyNews1> createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        title: Text(widget.news.name,
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold
        ),),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade400
              ),
            child: IconButton(
              onPressed: (){Navigator.pop(context);}, 
              icon: const Icon(Icons.arrow_back)),
            ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(widget.news.image),
            Text(widget.news.description,
            style: TextStyle(
              fontSize: 20
            ),)
            
          ],
        ),
      ),
    );
  }
}