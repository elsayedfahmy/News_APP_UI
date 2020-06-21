import 'package:flutter/material.dart';
import 'package:news/Models/nav_menu.dart';
import 'package:news/screens/HomeScreen.dart';
import 'package:news/screens/Instagram.dart';
import 'package:news/screens/headLineNews.dart';
import 'package:news/screens/twitter_feed.dart';

import '../Facebook.dart';

class Shared_drawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Shared_drawer();
  }
}

class _Shared_drawer extends State<Shared_drawer> {

  List<nav_menu_item> navigationMenu = [
    nav_menu_item('Explore', ()=>HomeScreen()),
    nav_menu_item('HeadLine News', ()=>headLineNews()),
    nav_menu_item('Twitter', ()=>Twitterfeed()),
    nav_menu_item('Instagram', ()=>Instagram()),
    nav_menu_item('Facebook', ()=>Facebook()),

  ];

//  List<String> nav_menu = [
//    'Explore',
//    'HeadLine News',
//    'Read Later',
//    'Videos',
//    'Photos',
//    'Setting',
//    'Log Out',
//  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 25),
        child: ListView.builder(
          itemCount: navigationMenu.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: ListTile(
                title: Text(
                  navigationMenu[index].title,
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade800),
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Colors.grey.shade600,
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => navigationMenu[index].description(),));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
