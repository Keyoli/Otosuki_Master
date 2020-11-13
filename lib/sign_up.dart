import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FormField/Text_field.dart';
import 'home_page.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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

                      Center(child: FieldName(text: 'パワード')),
                      TextFieldConstrainer(hintText: 'パワード', icon: Icons.lock, obscure: true,),

                      Center(child: FieldName(text: 'パスワード再入力')),
                      TextFieldConstrainer(hintText: 'パスワード再入力', icon: Icons.lock, obscure: true,),

                      Center(child: FieldName(text: '利用規約')),
                      Container(
                        height: 200.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF090130),
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          border: Border.all(
                            color: Colors.red, width: 2.2,
                          ),
                        ),
                        margin: EdgeInsets.only(left:30.0, right: 30.0, bottom: 20.0, top: 5.0),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(Icons.info_outline),
                              hintText: '利用規約',
                            ),
                          ),
                        ),
                      ),
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
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}






