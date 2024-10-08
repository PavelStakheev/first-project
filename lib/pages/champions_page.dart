import 'package:flutter/material.dart';
import 'package:six/models/champions.dart';
import 'package:six/models/champions_lol.dart';
import 'package:six/models/champions_tile.dart';
import 'package:provider/provider.dart';
import 'package:six/pages/page_of_champion.dart';

class MyChampions extends StatefulWidget {
  const MyChampions({super.key});

  @override
  State<MyChampions> createState() => _MyChampionsState();
}

class _MyChampionsState extends State<MyChampions> {


void listofchampions(Champions champions){
  Provider.of<Champions_lol>(context, listen: false).champ_lol;
}

  @override
  Widget build(BuildContext context) {
     return Consumer<Champions_lol>(builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: value.champ_lol.length,
              itemBuilder: (context,index) {
            Champions eachChampion = value.champ_lol[index];
              return MyTileChampions(
              champions: eachChampion,
              onTap:() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => PageOfChampion(champions: eachChampion)));
              }, 
             );
          }
          ),
          )
                  ],
          ),
       )
    ),
    );
  }
}