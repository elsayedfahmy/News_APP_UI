import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class whats_News extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _whats_News();
  }

}
class _whats_News extends State<whats_News>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _draw_container(),
          _deaw_topStories(),

        ],
      ),
    );
  }

  _draw_container() {

    TextStyle style_title=TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold
    );
    TextStyle style_description=TextStyle(
        color: Colors.white,
        fontSize: 15,

    );
   return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height *.25,
      decoration: BoxDecoration(
          image:DecorationImage(image: ExactAssetImage('assets/images/news_conatiner.jpg'),fit: BoxFit.cover)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('What is news  package:flutter/material.dart',style: style_title,
              textAlign: TextAlign.center,),
              Text('What is news  package:flutter/material.dart What is news  package:flutter/material.dart ',
                  style: style_description,
              textAlign: TextAlign.center,),
            ],),
        ),
      ),
    );
  }

  //  to draw the card of top of stories
  _deaw_topStories() {
    return Container(
      //padding: EdgeInsets.only(left: 2,right: 4,top: 2),
      color: Colors.grey.shade300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _draw_title('Top Stories'),

          Card(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _draw_single_row(),
                _draw_single_Container_space(),
                _draw_single_row(),
                _draw_single_Container_space(),
                _draw_single_row(),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _draw_title('Recent Updates'),
                _draw_recernt_Update_Card(Colors.deepOrange),
                _draw_single_Container_space(),
                _draw_recernt_Update_Card(Colors.teal),
                _draw_single_Container_space(),
                _draw_recernt_Update_Card(Colors.amber),
              SizedBox(height: 40,)
              ],
            ),
          )

        ],
      ),

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
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 2),
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


  // to _make space bettween single row (top stories )
  _draw_single_Container_space(){
    return Container(
      width: double.infinity,
      height: 5,
      color: Colors.grey.shade50,
    );
  }


  // to draw title such as top Stories or Sport etc
  _draw_title(String s) {
 return   Text(s,
 style: TextStyle(fontSize: 18,color: Colors.grey.shade700,fontWeight: FontWeight.w600),);
  }

  // to draw column of Recent updates
  _draw_recernt_Update_Card(Color color) {
    return  Card(

      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*.25,
            decoration: BoxDecoration(
              image: DecorationImage(image: ExactAssetImage('assets/images/news2.png'),fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.only(left: 16,right: 16,top: 4,bottom: 4),
              child: Text('Sport',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4)
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left:8,bottom: 8 ),
            child: Text('Hi elsayed in News again',style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(left:8,bottom: 8 ),
           child:Row(
             children: <Widget>[
               Icon(Icons.timer,color: Colors.grey,),
               Text('15 min',style: TextStyle(
                 color: Colors.grey,
                 fontSize: 12,
                 fontWeight: FontWeight.w600
             ),)],
           ),
          )

        ],
      ),
    );
  }
}