import 'package:six/models/ability.dart';

class Champions{
  final String name;
  final String description;
  final String imagePath;
  final ChampionsCategory category;
  final Ability passive;
  final Ability q;
  final Ability w;
  final Ability e;
  final Ability r;

 


  Champions({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.category,
    required this.passive,
    required this.q,
    required this.w,
    required this.e,
    required this.r,

    
  });
}

enum ChampionsCategory {
  warrior('Warrior'),
  magican('Magican'),
  tank('Tank'),
  assasin('Assasin'),
  shooter('Shooter'),
  manipulator('Manipulator');

 const ChampionsCategory(this.value);
 final String value;
}







