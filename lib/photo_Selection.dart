import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/loadingAnimation.dart';

class PhotoSelectedSection extends StatefulWidget {
  @override
  _PhotoSelectedSectionState createState() => _PhotoSelectedSectionState();
}

class _PhotoSelectedSectionState extends State<PhotoSelectedSection> {

  String defaultImage = '1';
  String defaultImage2 = '2';

  void changeCurrentImage(){
    setState(() {
      defaultImage = '3';
    });
  }

  void changeCurrentImage2(){
    setState(() {
      defaultImage2 = '3';
    });
  }


  @override
  Widget build(BuildContext context) {

    Widget carouselSlider = Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
          scrollDirection: Axis.horizontal,
        ),
        items: [1,2].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 2.0,
                      spreadRadius: 3.0,
                    ),
                  ],
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    child: Image.asset('images/scratch/$i.jpg', fit: BoxFit.cover)
                ),
              );
            },
          );
        }).toList(),
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 800.0,
                  height: 450.0,
                  child: carouselSlider,
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => LoadingBar(),
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 15.0),
                    height: 50.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Center(
                      child: Text('AI プロセス',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 50.0),
                          width: 120.0,
                          height: 120.0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              child: Image.asset('images/scratch/$defaultImage.jpg', fit: BoxFit.fill)
                          ),
                        ),
                        Positioned(
                          top: 55.0,
                          left: 85.0,
                          child: GestureDetector(
                            onTap: changeCurrentImage,
                            child: Icon(Icons.cancel, size: 30.0, color: Colors.black,),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 50.0),
                          width: 120.0,
                          height: 120.0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              child: Image.asset('images/scratch/$defaultImage2.jpg', fit: BoxFit.fill)
                          ),
                        ),
                        Positioned(
                          top: 55.0,
                          left: 85.0,
                          child: GestureDetector(
                            onTap: changeCurrentImage,
                            child: Icon(Icons.cancel, size: 30.0, color: Colors.black,),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50.0),
                      width: 120.0,
                      height: 120.0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          child: Image.asset('images/scratch/1.jpg', fit: BoxFit.fill)
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
