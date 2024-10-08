import 'package:flutter/material.dart';
import 'package:six/models/news.dart';

class News_lol extends ChangeNotifier{

List<News> get _news => [

News(
  name: 'Изменения обновления 14.12', 
  description: 'Все дороги ведут к нему. Приветствуем Faker в Hall of Legends!', 
  image: 'assets/faker.png'),

News(
  name: 'Изменения обновления', 
  description: 'Все дороги ведут к нему. Приветствуем Faker в Hall of Legends!', 
  image: 'assets/faker.png'),



];

List<News> get news => _news;

}