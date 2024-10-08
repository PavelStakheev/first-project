import 'package:flutter/material.dart';
import 'package:six/models/runes.dart';

class MyTileRunes extends StatelessWidget {
  final MyPaths paths;
  void Function()? onTap;
   MyTileRunes({
    super.key,
    required this.onTap,
    required this.paths});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(paths.img),
          fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(12),
          ),
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(paths.namePath,
            style: const TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic
            )),
            
          ],

        ),
      ),
    );
  }
}