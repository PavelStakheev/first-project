import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:six/models/ability.dart';


import 'champions.dart';

class Champions_lol extends ChangeNotifier{
  
final List<Champions> _list = [
Champions(
  //AHRI
  name: 'Ahri', 
  description: 'Ari is a mysterious vastayi fox who feels connected to the magic of the spirit world from birth. She manipulates the victim\'s emotions before drinking her soul and absorbing scraps of knowledge and memories. Ari was once a dangerous and unpredictable predator, but now...', 
  imagePath: 'assets/ahri.jpeg', 
  category: ChampionsCategory.magican, 
  passive: 
    Ability(
    name: 'Stealing an Entity', 
    description: 'Ari is treated when he kills 9 minions or monsters. By participating in the killing of the champion, she restores even more health to herself.', 
    key: 'Passive', 
    img: 'assets/ahri/passive_ahri.png', 
    video: 'videos/passive_ahri.mp4'),
  q: 
    Ability(
    name: 'The sphere \n of deception', 
    description: 'Ari launches a sphere that deals magical damage to all enemies in its path while flying away from Ari, and net damage on the way back.', 
    key: 'Q', 
    img: 'assets/ahri/q_ahri.png', 
    video: 'videos/q_ahri.mp4'),
  w: 
    Ability(
    name: 'Fox fire', 
    description: 'Ari briefly accelerates and releases three lights that aim at nearby enemies and attack them.', 
    key: 'W', 
    img: 'assets/ahri/w_ahri.png', 
    video: 'videos/w_ahri.mp4'),
  e: 
    Ability(
    name: 'Charm', 
    description: 'Ari blows a kiss that deals magical damage and enchants the enemy, instantly stopping the movement skills and forcing him to walk spellbound towards her.', 
    key: 'E', 
    img: 'assets/ahri/e_ahri.png', 
    video: 'videos/e_ahri.mp4'),
    r: Ability(
    name: 'Ghostly jerk', 
    description: 'Ari makes a dash forward and shoots lightning bolts of souls, dealing damage to enemies nearby. Ghost Dash can be used up to 3 times before the skill is recharged. The number of uses increases when Ari participates in killing enemy champions.', 
    key: 'R', 
    img: 'assets/ahri/r_ahri.png', 
    video: 'videos/r_ahri.mp4')    
    ),
  //AKALI
  Champions(
  name: 'Akali', 
  description: 'Akali did not reject Shen\'s teachings, but renounced the Kinku and the title of Shadow Fist. Now she is acting alone; she has become a weapon protecting the peoples of Ionia. Akali strikes the fatal blow inaudibly, because without words it is clear: "A killer without a master is doubly dangerous.', 
  imagePath: 'assets/akali.jpeg', 
  category: ChampionsCategory.assasin, 
  passive: 
    Ability(
    name: 'The mark of  \n  the killer', 
    description: 'When dealing damage with a skill to a champion, a circle of energy appears around him. When leaving the circle, Akali strengthens the next auto attack, increasing its range and damage.', 
    key: 'Passive', 
    img: 'assets/akali/passive_akali.png', 
    video: 'videos/video.mp4'),
  q: 
    Ability(
    name: 'Five-point \n strike', 
    description: 'Akali throws five kunai, dealing damage depending on the additional attack power and skill strength, as well as slowing down the target.', 
    key: 'Q', 
    img: 'assets/akali/q_akali.png', 
    video: 'videos/q_akali.mp4'),
  w: 
    Ability(
    name: 'The cover \n of twilight', 
    description: 'Akali creates a smoke screen and briefly increases his movement speed. Once inside, she becomes invisible, and enemies cannot choose her as a target for skills or auto attacks. When using auto attacks or skills, Akali briefly reveals himself.', 
    key: 'W', 
    img: 'assets/akali/w_akali.png', 
    video: 'videos/w_akali.mp4'),
  e: 
    Ability(
    name: 'The assasin\'s \n shuriken', 
    description: 'Akali does a backflip and throws a shuriken in front of him, dealing magical damage and marking the first enemy hit or a smoke screen. When applied again, the Akali makes a dash to the marked target, dealing additional damage.', 
    key: 'E', 
    img: 'assets/akali/e_akali.png', 
    video: 'videos/e_akali.mp4'),
    r: Ability(
    name: 'The perfect \n murder', 
    description: 'Akali makes a dash in the chosen direction, dealing damage to the affected enemies. Upon repeated use, the Akali makes another dash in the chosen direction, dealing damage depending on the target\'s missing health.', 
    key: 'R', 
    img: 'assets/akali/r_akali.png', 
    video: 'videos/r_akali.mp4')    
    )
  

    
];

  
List<Champions> get champ_lol => _list;


 
  
void listofchampions(Champions champions){
  
  
  notifyListeners();
}

}