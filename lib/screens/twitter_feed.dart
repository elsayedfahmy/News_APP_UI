import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/screens/shared_ui/Shared_drawer.dart';

class Twitterfeed extends StatefulWidget {
  @override
  _TwitterfeedState createState() => _TwitterfeedState();
}

class _TwitterfeedState extends State<Twitterfeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: Shared_drawer(),
      body: ListView.builder(
        padding:  EdgeInsets.all(8.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                _RowHeader(),
                _RowBody(),
                _draw_line(),
                _RowFootter(),
              ],
            ),
          );
        },
      ),
    );
  }

  _RowHeader() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
              backgroundImage: ExactAssetImage('assets/images/news3.png')),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'hi man ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '@222 hh',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'feb 19/6/2020 . 15 min',
              style: TextStyle(fontSize: 15),
            )
          ],
        )
      ],
    );
  }

  _RowBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 18, top: 8, bottom: 8),
      child: Text(
        'assets/images/news3.pngassets/images/news3.pngassets/images/news3.png',
        //textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15,height: 1.4),
      ),
    );
  }
_draw_line(){
    return Container(
      padding: EdgeInsets.all(8),
      height: 1,
      color: Colors.grey,
    );
}
  _RowFootter() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 18, top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.repeat),
                onPressed: () {},
                color: Colors.orange,
              ),
              Text(
                '24',
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Tweet',
                  style: TextStyle(color: Colors.orange),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text(
                  'Open',
                  style: TextStyle(color: Colors.orange),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

}
