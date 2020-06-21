import 'package:flutter/material.dart';
import 'package:news/screens/shared_ui/Shared_drawer.dart';
class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FaceBook'),
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
        padding: EdgeInsets.all(8.0),
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _RowHeader(),
                _Rowtitle(),
                _RowhasTag(),
                _Rowbody(),
                _RowFotter(),
              ],
            ),
          );
        },
      ),
    );
  }




  _RowHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
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
                Text(
                  'elsayed fahmy ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  'feb 19/6/2020 . 15 min',
                  style: TextStyle(fontSize: 15),
                )
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.grey.shade400,
              onPressed: () {
                return null;
              },
            ),
            Transform.translate(
                offset: Offset(-10, 0),
                child: Text(
                  '22',
                  style: TextStyle(color: Colors.grey.shade400),
                ))
          ],
        )
      ],
    );
  }

  _Rowtitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 4, right: 16, left: 16),
      child: Text(
        'mmmmmmmmmmmmmmmmmmmmmmmmmm',
        style: TextStyle(color: Colors.grey.shade700),
      ),
    );
  }

  _RowhasTag() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              '#advance',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              '#advance',
              style: TextStyle(color: Colors.orange),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              '#advance',
              style: TextStyle(color: Colors.orange),
            ),
          )
        ],
      ),
    );
  }

  _Rowbody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .2,
      child: Image(
        image: ExactAssetImage(
          'assets/images/news1.png',
        ),
        fit: BoxFit.cover,
      ),
    );
  }

  _RowFotter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            '10 comment',
            style: TextStyle(color: Colors.orange),
          ),
        ),
        Row(
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                'Share',
                style: TextStyle(color: Colors.orange),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Open',
                style: TextStyle(color: Colors.orange),
              ),
            ),
          ],
        )
      ],
    );
  }


}
