import 'package:flutter/material.dart';
import 'package:six/models/item.dart';

class MyTileItems extends StatelessWidget {
  final Item items;
  void Function()? onTap;
  
   MyTileItems({super.key,
  required this.items,
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      
      message: '${items.name} \n${items.description} \nPrice: ${items.price.toString()} gold',
     
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            GestureDetector(
              
              onTap: onTap,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(items.imgPath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}