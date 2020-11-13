import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/sign_up.dart';

class AutenticationSection extends StatefulWidget {
  @override
  _AutenticationSectionState createState() => _AutenticationSectionState();
}

class _AutenticationSectionState extends State<AutenticationSection> {

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Color(0xFF0e1023),
          title: Text('登録'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('　登録ボタン押下でメールアドレスに承認するメールを送信する'),
                Text('その承認URLにクリックすると左のパスワード設定する画面へ遷移'),
                Text(''),
                Text('※最初に登録する時になるべくユーザの面倒を下げる必要がある。',
                    style: TextStyle(
                      color: Colors.white54,
                )),
                Text('一回登録さればプロファイル画面で詳細画面で詳細情報を変更して',
                  style: TextStyle(
                    color: Colors.white54,
                  )),
            ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                child: Text('OKEY'),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ));
                },
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0e1023),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                  ),
                  SizedBox(height: size.height*0.09/3),
                  Text('ユーザー登録', style: TextStyle(
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
                  SizedBox(height: size.height*0.09/4),



                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: size.height*0.09/5),
                      //Gmail address
                      TextFieldConstrainer(hintText: 'メールアドレス', icon: Icons.email_rounded),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0, bottom: 8.0),
                        child: Center(
                          //Or else
                            child: Text('もしくは',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 25.0,
                              ),
                            ),
                        ),
                      ),

                      //Phone number
                      TextFieldConstrainer(hintText: '携帯番号', icon: Icons.phone_android_outlined),
                    ],

                  ),
                  SizedBox(height: size.height*0.09/2),
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
                          _showMyDialog();
                        },
                        child: Text('サインアップ', style: TextStyle(
                          fontFamily: 'Segoe',
                          color: Colors.white,
                          fontSize: 22.0,
                        )),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldConstrainer extends StatelessWidget {

  const TextFieldConstrainer({
    Key key, @required this.hintText, @required this.icon,
  }) : super(key: key);

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.2),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.2),
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          prefixIcon: Icon(icon),
          hintText: hintText,
          filled: true,
          fillColor: Color(0xFF050028),
        ),
      ),
    );
  }
}




class TextFieldArea extends StatelessWidget {

  final String hintText;
  final bool prokey;

  const TextFieldArea({
    Key key, this.prokey, this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 1.8),
      child: TextField(
        onChanged: (value){
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,


        ),
        obscureText: prokey,
        cursorColor: Colors.white,
      ),
    );
  }
}

