import 'package:flutter/material.dart';
import 'package:social_media_app/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  final void Function()? onProfileTap;
  final void Function()? onSignOut;
    const MyDrawer({super.key, required this.onProfileTap, required this.onSignOut});

    @override
    Widget build(BuildContext context) {
      return Drawer(
        backgroundColor:Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Column(
            children: [
              //header
              const DrawerHeader(
                child: Icon(
                  Icons.person,
                  color:Colors.white,
                  size: 64,
                ), // Icon
              ), //DrawerHeader

            // home list title
            MyListTile(
              icon: Icons.home, 
              text:' H O M E',
              onTap: () => Navigator.pop(context),
              ), // MyListTile

            //profile list title
            MyListTile(
              icon: Icons.person,
              text:' P R O F I L E',
              onTap: onProfileTap,
              ), // MyListTile
            ],
          ),

          //logout list title
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              icon: Icons.logout,
              text:' L O G O U T',
              onTap: onSignOut, //
              ),
          ), // MyListTile

        ],
      ),  // Column
    ); // Drawer
  }
}