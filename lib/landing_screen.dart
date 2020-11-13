import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/home_page.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}



class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {

    Widget carouselSlider = Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 300),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ),
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
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
                    child: Image.asset('images/$i.jpg', fit: BoxFit.cover)
                ),
              );
            },
          );
        }).toList(),
      ),
    );


    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            ListView(
              children: <Widget>[
                carouselSlider,
              ],
            ),
            Container(
              color: Colors.black.withOpacity(0.2),
            ),


            Container(
              padding: EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    color: Colors.black,
                    child: Text(
                      'スキップ', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
