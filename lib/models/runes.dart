import 'package:flutter/material.dart';

class MyPaths{
final String namePath;
final String description;
final String img;
List<Keystone> keystone;
List<SecondaryRunes> secondaryRunes;

MyPaths({
  required this.namePath,
  required this.description,
  required this.img,
  required this.keystone,
  required this.secondaryRunes

});
}
class Keystone{

final String nameKeystone;
final String description;
final String img;

Keystone({
  
  required this.nameKeystone,
  required this.description,
  required this.img

});

}

class SecondaryRunes{

final String nameSecRunes;
final String description;
final String img;

SecondaryRunes({
  
  required this.nameSecRunes,
  required this.description,
  required this.img

});

}








