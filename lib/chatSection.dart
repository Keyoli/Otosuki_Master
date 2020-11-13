
import 'package:flutter/material.dart';
import 'package:flutter_app/chatScreen/chatScreen.dart';
import 'package:flutter_app/home_page.dart';
import 'package:flutter_app/mylist_design_ui.dart';
import 'package:flutter_app/reformScreen.dart';
import 'package:flutter_app/sign_in.dart';
import 'package:flutter_app/user.dart';


class ChatSection extends StatefulWidget {

  @override
  _ChatSectionState createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {

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

  List name = ["Josh","Jack","Jimmy","Andy","Farrel","Ally","Emmit"];
  List roll = ["builder", "fixer", "builder", "fixer", "checker", "builder"];
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0e1023),
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
                      },
                      //Reform of work
                      child: _textStyling('新規作業依頼', Icons.attach_file),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => ReformScreen(),
                        ));
                      },
                      //Work exchange form
                      child: _textStyling('作業やり取り', Icons.change_history_sharp),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.push(context, new MaterialPageRoute(
                          builder: (context) => mylist_design_ui(),
                        ));
                      },
                      //Chat
                      child: _textStyling('チャット', Icons.format_list_numbered_rtl),
                    ),
                    FlatButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: _textStyling('メッセージ', Icons.chat_bubble),
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                ),
                SizedBox(height: size.height*0.09/3),
                Text('チャット一覧', style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Segoe',
                  fontSize: 28.0,
                  fontStyle: FontStyle.normal,
                )),
                Divider(
                  height: 20.0,
                  thickness: 2.5,
                  color: Colors.redAccent,
                  endIndent: 110,
                  indent: 110,
                ),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 55.0,
                                  height: 55.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage('https://www.emmegi.co.uk/wp-content/uploads/2019/01/User-Icon.jpg'),
                                  ),
                                ),
                                SizedBox(width: 5.0,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(name[index],
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(roll[index],
                                      style: TextStyle(color: Colors.grey, fontSize: 13.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
                                },
                                color: Colors.red[200],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Text('チャット'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                      color: Colors.redAccent,
                    ),
                    child: FlatButton(
                      color: Colors.transparent,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MyHomePage(),
                        ));
                      },
                      child: Text('サインアップ', style: TextStyle(
                        fontFamily: 'Segoe',
                        color: Colors.white,
                        fontSize: 22.0,
                      )),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

