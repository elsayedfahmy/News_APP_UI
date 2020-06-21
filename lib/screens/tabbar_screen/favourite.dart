import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class favourite extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _favourite();
  }
}

class _favourite extends State<favourite> {
  List<Color> list_colors=[
    Colors.amber,
    Colors.red,
    Colors.teal,
    Colors.pink,
    Colors.deepOrangeAccent,
  ];
  Random  random=Random();
  _get_Color(){
    return list_colors[random.nextInt(list_colors.length)];
  }




  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                _get_Row_of_other(),
                SizedBox(height: 15,),
                _get_Row_of__item_data(),
              ],
            ),
          ),
        );
      },
    );
  }

  _get_Row_of_other() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 15),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('assets/images/news3.png'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
            ),
            Column(
              children: <Widget>[
                Text('elsayed fahmy',style: TextStyle(color: Colors.grey),),
                SizedBox(height: 8,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('15 min .',style: TextStyle(color: Colors.grey),),
                    Text('Life style',style: TextStyle(color:_get_Color()),),
                  ],
                )
              ],
            )

          ],
        ),
        IconButton(
          icon: Icon(Icons.bookmark_border),
          color: Colors.grey,
          onPressed: () {},
        )
      ],
    );
  }

  _get_Row_of__item_data() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: ExactAssetImage('assets/images/news2.png'),
                  fit: BoxFit.cover),),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
              padding: const EdgeInsets.only(bottom:8.0),
                child: Text('assets/images/news3assets/imag',
                    style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w800)),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom:8.0),
                child: Text('assets/images/news3assets/imges/ne',
                style: TextStyle(color: Colors.grey,fontSize: 16,height: 1.25),),
              ),
            ],
          ),
        )
      ],
    );
  }
}
