import 'package:flutter/material.dart';
class popular extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _popular();
  }

}
class _popular extends State<popular>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: _draw_single_row(),
          );
        },
      itemCount: 20,
    );
  }




  // to draw single row  from card of top stories
  _draw_single_row(){
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(children: <Widget>[

        SizedBox(
          width: 100,
          height: 80,
          child: Image(
            image: ExactAssetImage('assets/images/news3.png'),
            fit: BoxFit.cover,),
        ),
     // SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:9.0,top: 2),
                child:Text('package:flutter/material.dart',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),maxLines: 2,
                ) ,
              ),

              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 20,right: 25,bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('material'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text('15 min',),

                      ],
                    ),

                  ],
                ),
              ),

            ],
          ),
        )
      ],
      ),
    );
  }


}