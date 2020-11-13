import 'package:flutter/material.dart';

class mylist_design_ui extends StatelessWidget {
  mylist_design_ui({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/mylist.jpg'),
                      fit: BoxFit.cover)
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/mylist.jpg'),
                      fit: BoxFit.fitHeight)
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0, left: 2.0),
              child: FloatingActionButton(
                  backgroundColor: Colors.transparent,
                  elevation: 5.0,
                  child: Icon(Icons.cancel, size: 60.0, color: Colors.white),
                  onPressed: (){
                    Navigator.pop(context);
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
