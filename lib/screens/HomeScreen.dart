import 'package:flutter/material.dart';
import 'package:news/screens/shared_ui/Shared_drawer.dart';
import 'package:news/screens/tabbar_screen/whats_News.dart';
import 'package:news/screens/tabbar_screen/popular.dart';
import 'package:news/screens/tabbar_screen/favourite.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}
// This is the type used by the popup menu below.
enum _popUpMenu_data { Help, About, Contact, Settings }

class _HomeScreen extends State<HomeScreen>
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
          _PopUpMenu(context),
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
          whats_News(),
          popular(),
          favourite(),
        ],
        controller: tabController,
      ),
    );
  }

// This menu button widget updates a _selection field (of type _popUpMenu_data )
  _PopUpMenu(BuildContext context) {

    return
      PopupMenuButton<_popUpMenu_data>(
        onSelected: (_popUpMenu_data result){},
        itemBuilder: (context) => <PopupMenuEntry<_popUpMenu_data>>[
          const PopupMenuItem<_popUpMenu_data>(
            value: _popUpMenu_data.Help,
            child: Text('Help'),
          ),
          const PopupMenuItem<_popUpMenu_data>(
            value: _popUpMenu_data.About,
            child: Text('About'),
          ),
          const PopupMenuItem<_popUpMenu_data>(
            value: _popUpMenu_data.Contact,
            child: Text('Contact'),
          ),
          const PopupMenuItem<_popUpMenu_data>(
            value: _popUpMenu_data.Settings,
            child: Text('Settings'),
          ),
        ],
        icon: Icon(Icons.more_vert),
      )
      ;

  }
}
