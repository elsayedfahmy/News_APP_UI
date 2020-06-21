import 'package:flutter/material.dart';
import 'package:news/screens/shared_ui/Shared_drawer.dart';
import 'package:news/screens/tabbar_screen/favourite.dart';
import 'package:news/screens/tabbar_screen/popular.dart';
import 'package:news/screens/tabbar_screen/whats_News.dart';


class headLineNews extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _headLineNews();
  }
}
class _headLineNews extends State<headLineNews>
    with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              text: 'WHATM NEWS',
            ),
            Tab(
              text: 'POPULAR',
            ),
            Tab(
              text: 'FAVOURITE',
            ),
          ],
        ),
      ),
      drawer: Shared_drawer(),
      body: TabBarView(
        children: <Widget>[
          //whats_News(),
          favourite(),
          popular(),
          favourite(),
        ],
        controller: tabController,
      ),
    );
  }
}