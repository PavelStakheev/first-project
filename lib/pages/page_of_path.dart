import 'package:flutter/material.dart';
import 'package:six/models/runes.dart';

class MyPageOfPath extends StatefulWidget {
  final MyPaths paths;
  
  const MyPageOfPath({super.key,
  required this.paths});

  @override
  State<MyPageOfPath> createState() => _MyPageOfPathState();
}

class _MyPageOfPathState extends State<MyPageOfPath> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
        
        image: DecorationImage(
          image: AssetImage(widget.paths.img),
          fit: BoxFit.cover,
          )
      ),
     child: Scaffold(
      backgroundColor: Colors.transparent ,
          appBar: AppBar(
          leading: IconButton(
            onPressed: (){Navigator.pop(context);}, 
            icon: const Icon(Icons.arrow_back,
            color: Colors.white,)),
          backgroundColor: Colors.transparent,
          title: Text( 'Path ${widget.paths.namePath}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontStyle: FontStyle.italic),
          ),  
      ),
      body: SingleChildScrollView(
        
        child: Container(
          color: Color.fromARGB(255, 189, 192, 189).withOpacity(0.5),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                const Divider(height: 1,
                color: Colors.white),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(widget.paths.description,
                  style: const TextStyle(
                    fontSize: 20,
                  ),),
                ),
                const Text('Keystones',
                style: TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic
                ),),
                const SizedBox(height: 10),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.paths.keystone.length,
                  itemBuilder:(context, index) {
                    Keystone keystone = widget.paths.keystone[index];
                    return
                         Column(
                          children: [
                            Text(keystone.nameKeystone,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 5),
                            Image.asset(keystone.img),
                            const SizedBox(height: 5),
                            Text(keystone.description,
                            style: const TextStyle(fontSize: 15),),
                            const SizedBox(height: 10)
                          ],
                        );
                  },),
                  const SizedBox(height: 10),
                  const Text('Secondary runes',
                   style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.italic
                  ),),
                  const SizedBox(height: 10),
                  ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.paths.secondaryRunes.length,
                  itemBuilder:(context, index) {
                    SecondaryRunes secondaryRunes = widget.paths.secondaryRunes[index];
                    return
                         Column(
                          children: [
                            Text(secondaryRunes.nameSecRunes,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),),
                            const SizedBox(height: 5),
                            Image.asset(secondaryRunes.img),
                            const SizedBox(height: 5),
                            Text(secondaryRunes.description,
                            style: const TextStyle(fontSize: 15),),
                            const SizedBox(height: 10)
                          ],
                        );
                  },),
                  const SizedBox(height: 15)
              ],
            ),
          ),
        ),
      ),
    ), 
  );
  }
}