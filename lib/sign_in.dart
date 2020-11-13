import 'package:flutter/material.dart';
import 'package:flutter_app/Authentication.dart';

import 'home_page.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

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
              Text('ユーザーログイン',
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
                margin: EdgeInsets.only(top: 20.0),
                  child: Text('" 良い一日をお過ごしください "',
                      style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Segoe',
                        fontSize: 24.0,
                      )),
              ),

              TextFieldConstrainer(hintText: 'ユーザー名', icon: Icons.person),
              SizedBox(height: size.height*0.09/3),
              TextFieldConstrainer(hintText: 'パスワード', icon: Icons.lock),

              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    color: Colors.redAccent,
                  ),
                  child: FlatButton(
                    color: Colors.transparent,
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                    },
                    child: Text('サインイン', style: TextStyle(
                      fontFamily: 'Segoe',
                      color: Colors.white,
                      fontSize: 22.0,
                    )),
                  ),
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => AutenticationSection(),
                  ));
                },
                child: Text('ここに登録！', style: TextStyle(
                  fontFamily: 'Segoe',
                  color: Colors.white,
                  fontSize: 16.0,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




