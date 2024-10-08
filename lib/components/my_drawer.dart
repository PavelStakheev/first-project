import 'package:flutter/material.dart';
import 'package:six/components/my_tile_drawer.dart';
import 'package:six/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Icon(
              Icons.play_arrow,
              color: Theme.of(context).colorScheme.inversePrimary,
              size: 60,
            ),
          ),
          Padding(
             padding: const EdgeInsets.only(top: 10.0),
             child: Divider(
              color: Theme.of(context).colorScheme.secondary,
             ),
           ),
          MyTileDrawer(name: 'H O M E', icon: Icons.home, onTap: (){Navigator.pop(context);} ),
          MyTileDrawer(name: 'S E T T I N G S', icon: Icons.settings, onTap: (){Navigator.push(context, MaterialPageRoute(
              builder: (context) => SettingsPage()));}),

        ],),
    );
  }
}