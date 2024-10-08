import 'package:flutter/material.dart';


class MyTileDrawer extends StatelessWidget {
  final String name;
  final IconData? icon;
  final void Function()? onTap;
  const MyTileDrawer({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: ListTile(
        title: Text(name, 
        style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
        leading: Icon(icon,
        color: Theme.of(context).colorScheme.inversePrimary),
        onTap: onTap,

      ),);
  }
}                          