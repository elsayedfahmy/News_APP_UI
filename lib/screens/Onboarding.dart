import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'HomeScreen.dart';
import '../Models/PageModel.dart';

class Onboarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Onboarding();
  }
}

class _Onboarding extends State<Onboarding> {
  ValueNotifier<int> _pageIndexNotifier = ValueNotifier<int>(0);

  List<PageModel> pageModel_list ;
  _addpages(){
    pageModel_list =List<PageModel>();
    pageModel_list.add(PageModel(
        'Weclome!', '1- Making frienf is is easy as waving your hand back',
        Icons.ac_unit, 'assets/images/news3.png'));
    pageModel_list.add(PageModel(
        'camera_alt!', '2- Making frienf is is easy as waving your hand back',
        Icons.camera_alt, 'assets/images/news2.png'));
    pageModel_list.add(PageModel(
        'alarm!', '3- Making frienf is is easy as waving your hand back',
        Icons.alarm, 'assets/images/news1.png'));
    pageModel_list.add(PageModel(
        'map!', '4- Making frienf is is easy as waving your hand back',
        Icons.map, 'assets/images/news4.png'));
  }

  @override
  Widget build(BuildContext context) {
    _addpages();
    int index=0;

    return
      Stack(
        children: <Widget>[
          Scaffold(
            body: PageView.builder(
              itemCount:pageModel_list.length ,
              onPageChanged: (index) => _pageIndexNotifier.value = index,
              itemBuilder: (context, index) {

                return Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: ExactAssetImage(pageModel_list[index].image),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Transform.translate(
                          child: Icon(
                            pageModel_list[index].icons,
                            size: 100,
                            color: Colors.white,
                          ),
                          offset: Offset(0, -100),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            pageModel_list[index].title,
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 10),
                          child: Text(
                            pageModel_list[index].description,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.cyanAccent,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),


                  ],
                );
              },
            ),
          ),
          Transform.translate(offset: Offset(0,175),
            child:Align(
              alignment: Alignment.center,
              child: _display_PageViewIndicator(pageModel_list.length),

            ) ,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 16, right: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 50,
                child: RaisedButton(

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Colors.red.shade800,
                  child: Text(
                    'GEt STAETED',
                    style: TextStyle(
                        fontSize: 16, letterSpacing: 1, color: Colors.white),
                  ),
                  onPressed: () async {

                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      shared_prefrence();
                     return HomeScreen();
                    },
                    ));

                  },
                ),
              ),
            ),
          )
        ],
      );


  }

//  List< Widget> container_ind(int index){
//    List<Container> list_container=List<Container>();
//    Color color;
//    for(var i in pageModel_list){
//      if(pageModel_list[index]==i){
//        color=Colors.red;
//      }else color=Colors.grey;
//      list_container.add(Container(
//        margin: EdgeInsets.only(right: 8),
//        width: 15,
//        decoration: BoxDecoration(
//          shape: BoxShape.circle,
//          color: color,
//        ),
//      )
//      ) ;
//    }
//    return list_container;
//  }

   shared_prefrence()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seen',true );

}

//--------------------------------------------------------------

  Widget _display_PageViewIndicator(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageIndexNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 8.0,
          color: Colors.red,
        ),
      ),
    );
  }


}
