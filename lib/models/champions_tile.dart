import 'package:six/models/champions.dart';
import 'package:flutter/material.dart';

class MyTileChampions extends StatelessWidget {
   MyTileChampions({
    super.key,
    required this.champions,
    required this.onTap,
    });

  final Champions champions;
  void Function()? onTap;
  

  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: onTap,
      
      child: Container(
        height: 135,
        
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(champions.imagePath),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter),
          borderRadius: BorderRadius.circular(12)),
          margin: const EdgeInsets.only(bottom: 5) ,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/fon.jpeg'),
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(champions.name,
                    style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ),
              const Text('')
              ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(''),
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                      image: AssetImage('assets/2fon.jpeg'),
                      fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).colorScheme.inversePrimary
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(champions.category.value,
                      style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      fontStyle: FontStyle.italic
                                      ),),
                    ),
                  )],
              )
                
            ],
          ),
        ),
        
      ),
    );
  }
}
