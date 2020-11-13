import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import 'package:flutter_app/workRequest/workRequest.dart';


class LoadingBar extends StatefulWidget {
  @override
  _LoadingBarState createState() => _LoadingBarState();
}

class _LoadingBarState extends State<LoadingBar> {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: new AppBar(
        title: new Text("進行中の機能"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 100.0,
            ),
            Container(
              height: 300.0,
              width: 300.0,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle
              ),
              child: LiquidCircularProgressIndicator(
                value: 0.45, // Defaults to 0.5.
                valueColor: AlwaysStoppedAnimation(Colors.pink), // Defaults to the current Theme's accentColor.
                backgroundColor: Colors.white, // Defaults to the current Theme's backgroundColor.
                borderColor: Colors.red,
                borderWidth: 5.0,
                direction: Axis.horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
                center: Text("52% 読み込み中...",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28.0,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => workRequestScreen(),
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
                  child: Text('フォワード',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
