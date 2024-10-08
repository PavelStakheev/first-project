import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:six/models/runes_lol.dart';
import 'package:six/models/runes.dart';
import 'package:six/models/runes_tile.dart';
import 'package:six/pages/page_of_path.dart';

class MyRunesPage extends StatefulWidget {
  
  const MyRunesPage({super.key,
});

  @override
  State<MyRunesPage> createState() => _MyRunesPageState();
}

class _MyRunesPageState extends State<MyRunesPage> {
 
  @override
  Widget build(BuildContext context) {
   return Consumer<Runes_lol>(builder:(context, value, child) => 
   Padding(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
            itemCount: value.runes.length,
            itemBuilder:(context, index) {
              final eachrunes = value.runes[index];
              return Container(
                height: 200,
                padding: EdgeInsets.all(8),
                child: MyTileRunes(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyPageOfPath(paths: eachrunes)));
                  }, 
                  paths: eachrunes),
              );
            },))
      ],
    ),));
  } 
}