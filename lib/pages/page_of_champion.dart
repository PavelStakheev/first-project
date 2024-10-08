import 'package:flutter/material.dart';
import 'package:six/components/video.dart';
import 'package:six/models/champions.dart';


class PageOfChampion extends StatefulWidget {

  final Champions champions;
  const PageOfChampion({
    super.key,
    required this.champions,
 });

  @override
  State<PageOfChampion> createState() => _PageOfChampionState();

}

class _PageOfChampionState extends State<PageOfChampion> {
    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          title: Row(
          children: [
            Text( 'Champion ${widget.champions.name}',
            style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
          fontSize: 25,
          fontStyle: FontStyle.italic),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                  children: [
                  Text('Role:',
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  Text(widget.champions.category.value,
                  style: TextStyle(
                    fontSize: 15,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),)
                  
                ],
              ),
            )
          ],
        ),  
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Image.asset(widget.champions.imagePath),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(widget.champions.description),
              ),
              const SizedBox(height: 10),
              const  Text('Abilitys',
                style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic
                ),
              ),
               const SizedBox(height: 10),
//Ability Passive
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.champions.passive.img)
                        ),
                        const SizedBox(height: 5),                
                        Text(widget.champions.passive.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 260,
                    child:Text(widget.champions.passive.description)
                  ),
                  ],
                  ),
                ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.champions.passive.key,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                      ),),
                      MyVideo(
                      videoUrl: widget.champions.passive.video, 
                      playPauseVideoAction: true)
                    ],
                  ),
                )
                ),
              const SizedBox(height: 25),
              Divider(
                height: 5,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 25),
//Ability Q
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.champions.q.img)
                        ),     
                        const SizedBox(height: 5),           
                        Text(widget.champions.q.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 260,
                    child:Text(widget.champions.q.description)
                  ),    
                   ],
                ),
                ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(widget.champions.q.key,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),),
                      ),
                      MyVideo(
                      videoUrl: widget.champions.q.video, 
                      playPauseVideoAction: false)
                    ],
                  ),
                )
                ),
              const SizedBox(height: 25),
              Divider(
                height: 5,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 25),
//ability w
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.champions.w.img)
                        ), 
                        const SizedBox(height: 5),              
                        Text(widget.champions.w.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 260,
                    child:Text(widget.champions.w.description)
                  ),
                  ],
                  ),
                ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(widget.champions.w.key,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),),
                      ),
                      MyVideo(
                      videoUrl: widget.champions.w.video, 
                      playPauseVideoAction: true)
                    ],
                  ),
                )
                ),
              const SizedBox(height: 25),
              Divider(
                height: 5,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 25),
//ability e   
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.champions.e.img)
                        ),
                        const SizedBox(height: 5),                  
                        Text(widget.champions.e.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 260,
                    child:Text(widget.champions.e.description)
                  ),
                  ],
                  ),
                ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(widget.champions.e.key,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),),
                      ),
                      MyVideo(
                      videoUrl: widget.champions.e.video, 
                      playPauseVideoAction: true)
                    ],
                  ),
                )
                ),
              const SizedBox(height: 25),
              Divider(
                height: 5,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 25),
//ability r
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(widget.champions.r.img)
                        ), 
                        const SizedBox(height: 5),                 
                        Text(widget.champions.r.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 260,
                    child:Text(widget.champions.r.description)
                  ),
                  ],
                  ),
                ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(widget.champions.r.key,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic
                        ),),
                      ),
                      MyVideo(
                      videoUrl: widget.champions.r.video, 
                      playPauseVideoAction: true)
                    ],
                  ),
                )
                ),
              const SizedBox(height: 25),
             
             
            ],
        ),
      ),
    );
  }

  
}