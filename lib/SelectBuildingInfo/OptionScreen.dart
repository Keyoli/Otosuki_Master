import 'package:flutter/material.dart';
import 'package:flutter_app/Building_Info_Screen/buildingInfoScreen.dart';

import '../home_page.dart';

class OptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0e1023),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
              ),
              SizedBox(height: size.height*0.09/2),
              Text('新規作業依頼',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Segoe',
                    fontSize: 28.0,
                  )),
              Divider(
                height: 18.0,
                thickness: 2,
                color: Colors.redAccent,
                endIndent: 148,
                indent: 150,
              ),

              Container(
                height: 150.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [
                    Text('新規物件を登録するか、',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Segoe',
                          fontSize: 24.0,
                        )),
                    Text('登録済物件の情報で作業依頼',
                        style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Segoe',
                          fontSize: 24.0,
                        )),
                  ],
                ),
              ),



              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.redAccent,
                    ),
                    child: FlatButton(
                      color: Colors.transparent,
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => BuildingInformationScreen(),
                        ));
                      },
                      child: Text('新しく直したい建物情報', style: TextStyle(
                        fontFamily: 'Segoe',
                        color: Colors.white,
                        fontSize: 22.0,
                      )),
                    ),
                  ),

                  SizedBox(height: size.height*0.09/2),
                  Center(child: FieldName(text: '登録済みの建物情報')),
                  Divider(
                    height: 18.0,
                    thickness: 2,
                    color: Colors.green,
                    endIndent: 50,
                    indent: 60,
                  ),


                  Container(
                    margin: EdgeInsets.only(top:15.0),
                    width: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.blueAccent,
                    ),
                    child: FlatButton(
                      color: Colors.transparent,
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => BuildingInformationScreen(),
                        ));
                      },
                      child: Text('部屋間どり', style: TextStyle(
                        fontFamily: 'Segoe',
                        color: Colors.white,
                        fontSize: 22.0,
                      )),
                    ),
                  ),

                ],
              ),

              SizedBox(height: size.height*0.09/3),

             // TextFieldConstrainer(hintText: 'パスワード', icon: Icons.lock),

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    color: Colors.green,
                  ),
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                    },
                    child: Text('次', style: TextStyle(
                      fontFamily: 'Segoe',
                      color: Colors.white,
                      fontSize: 22.0,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
