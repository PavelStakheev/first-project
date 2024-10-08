import 'package:flutter/material.dart';
import 'package:six/models/news.dart';

class MyTyleNews extends StatelessWidget {
  MyTyleNews({super.key,
  required this.news,
  required this.onTap});
  final News news;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Theme.of(context).colorScheme.secondary),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(news.image),
              Text(news.name),
              
            ],
          ),
        ),
      ),
    );
  }
}