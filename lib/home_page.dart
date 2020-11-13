import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/SelectBuildingInfo/OptionScreen.dart';
import 'package:flutter_app/chatSection.dart';
import 'package:flutter_app/mylist_design_ui.dart';
import 'package:flutter_app/photo_Selection.dart';
import 'package:flutter_app/reformScreen.dart';
import 'package:flutter_app/sign_in.dart';
import 'package:flutter_app/user.dart';
import 'package:flutter_app/workRequest/workRequest.dart';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ListTile _textStyling(String text , IconData icon){
    return ListTile(
      title: Text(text,
        style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
            fontFamily: 'Calibri'
        ),
      ),
      leading: Icon(icon),
    );
  }

  File _image;

  final picker = ImagePicker();

  Future getImageFromCamera() async {
    var pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = pickedFile as File;
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromLibrary() async {
    var pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = pickedFile as File;
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: Container(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 230.0, top: 15.0),
                      width: 60.0,
                      child: IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.cancel, color: Colors.white, size: 45.0,),
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => UserSection()));
                      },
                      child: _textStyling('プロフィール', Icons.person),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OptionScreen()));
                      },
                      //Reform of work No.2
                      child: _textStyling('新規作業依頼', Icons.attach_file),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, MaterialPageRoute(builder: (context) => workRequestScreen()));
                      },
                      //Work exchange form
                      child: _textStyling('作業やり取り', Icons.change_history_sharp),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => ChatSection(),
                        ));
                      },
                      //Chat
                      child: _textStyling('チャット', Icons.format_list_numbered_rtl),
                    ),

                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => ReformScreen(),
                        ));
                      },
                      child: _textStyling('問い合わせ', Icons.wallet_travel_rounded),
                    ),

                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ));
                      },
                      child: _textStyling('ログアウト', Icons.exit_to_app),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, 100).withOpacity(0.7),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        getImageFromLibrary();
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.image,
                            size: 120.0,
                            color: Colors.white,
                          ),
                          Text(
                            '写真を選択',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        getImageFromCamera();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => PhotoSelectedSection(),
                        ));
                      },
                      child: Column(
                        children: <Widget>[
                          Icon(
                            Icons.camera_enhance,
                            size: 120.0,
                            color: Colors.white,
                          ),
                          Text(
                            'アクセスカメラ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.green,
                        ),
                        child: FlatButton(
                          color: Colors.transparent,
                          onPressed: (){
                            Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => PhotoSelectedSection(),
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
          ],
        ),
      ),
    );
  }
}

