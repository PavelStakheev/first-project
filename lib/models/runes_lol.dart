import 'package:flutter/material.dart';
import 'package:six/models/runes.dart';

class Runes_lol extends ChangeNotifier{

  final List<MyPaths> _runes =[
   MyPaths(
    namePath: 'Precision', 
    description: 'The Precision Rune Path is one of five rune paths. It is centered around marksman and sustained damage dealers.', 
    img: 'assets/precision.png', 
    keystone: [
      Keystone(
        nameKeystone: 'Press the Attack', 
        description: 'PASSIVE: Basic attacks On-hit icon on-hit against enemy Champion icon champions apply a stack for 4 seconds, refreshing on subsequent applications, expiring upon attacking a new champion, and stacking up to 3 times. The third stack consumes all stacks to deal 40 − 160 (based on level) bonus Attack damageMagic damage adaptive damage and grant you 8% increased damage (except Hybrid penetration true damage) against champions until you are no longer in combat with them.', 
        img: 'assets/pessofattack.png'),
      Keystone(
        nameKeystone: 'Fleet Footwork', 
        description: 'UNIQUE – ENERGIZED: Moving and basic attacking generates Charges, up to 100. At 100 Charges, become Kircheis Shard item Energized, empowering your next basic attack to Heal power icon heal you for 8 − 110 (based on level) (+ 10% bonus AD) (+ 5% AP) and grant Movement speed icon 20% bonus movement speed for 1.25 seconds. Against Minion icon minions, the healing is (Melee role 20% / Ranged role 10%) effective.', 
        img: 'assets/botinki.png')], 
    secondaryRunes: [
      SecondaryRunes(
        nameSecRunes: 'Absorb Life', 
        description: 'PASSIVE: Killing an enemy Heal power icon heals you for 2 − 20 (based on level).', 
        img: 'assets/absorb.png'),
      SecondaryRunes(
        nameSecRunes: 'Triumph', 
        description: 'PASSIVE: Scoring a Damage rating takedown against an enemy champion Heal power icon heals you for 2.5% of your maximum health (+ 5% of your missing health) and grants you an additional 20 Gold 20, both after a 1-second delay.', 
        img: 'assets/Triumph_rune.png')]
        ),
     MyPaths(
    namePath: 'Domination', 
    description: 'The Domination Rune Path is one of five rune paths. It is centered around burst damage, and general utility.', 
    img: 'assets/Domination_Loading.png', 
    keystone: [
      Keystone(
        nameKeystone: 'Electrocute', 
        description: 'PASSIVE: Damaging basic attacks, abilities, item effects, and summoner spells, as well as the application of Stun icon crowd control and damage over time effects, generate stacks against enemy Champion icon champions, up to one per attack or cast per champion. Applying 3 stacks to a target within a 3 second period causes them to be struck by lightning after a 0.25-second delay, dealing them 30 − 220 (based on level) (+ 10% bonus AD) (+ 5% AP) physical or magic damage.', 
        img: 'assets/Electrocute_rune.png'),
      Keystone(
        nameKeystone: 'Dark Harvest', 
        description: 'PASSIVE: Damaging basic attacks and ability damage against enemy Champion icon champions below 50% of their maximum health deal 20 − 80 (based on level) (+ 5 per Soul) (+ 10% bonus AD) (+ 5% AP) bonus Attack damageMagic damage adaptive damage and, after a 1.75-second delay, reap 1 Soul. This cannot occur again for 45 seconds, resetting to 1.5 seconds upon scoring a Damage rating takedown against an enemy champion. While not on cooldown, also reap 1 Soul from receiving the kill credit of a champion killed by a Minion icon minion, Monster icon monster, or Turret icon turret.', 
        img: 'assets/Dark_Harvest_rune.png')], 
    secondaryRunes: [
      SecondaryRunes(
        nameSecRunes: 'Taste of Blood', 
        description: 'PASSIVE: Damaging an enemy Champion icon champion Heal power icon heals you for 16 − 40 (based on level) (+ 10% bonus AD) (+ 5% AP).', 
        img: 'assets/Taste_of_Blood_rune.png'),
      SecondaryRunes(
        nameSecRunes: 'Cheap Shot', 
        description: 'PASSIVE: Damaging basic attacks and ability damage deal 10 − 45 (based on level) bonus true damage to enemy Champion icon champions affected by certain crowd control effects.', 
        img: 'assets/Cheap_Shot_rune.png')]
        ),    
    ];
  


  List<MyPaths> get runes => _runes;

}