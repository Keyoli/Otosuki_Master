import 'package:flutter/material.dart';
import 'package:flutter_app/Building_Info_Screen/buildingInfoScreen.dart';
import 'home_page.dart';

class UserSection extends StatefulWidget {
  @override
  _UserSectionState createState() => _UserSectionState();
}

class _UserSectionState extends State<UserSection> {

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
                  Navigator.pop(context);
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
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                ),
                SizedBox(height: size.height*0.09/2),
                Text('ユーザ情報',
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
                SizedBox(height: size.height*0.09/2),

                TextFieldConstrainer(hintText: '性', icon: Icons.person_pin),
                SizedBox(height: size.height*0.09/3),
                TextFieldConstrainer(hintText: '名 住所', icon: Icons.person),
                SizedBox(height: size.height*0.09/3),
                TextFieldConstrainer(hintText: '住所', icon: Icons.pin_drop),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 170.0,
                      child: Center(
                        child: FieldName(text: 'クリエイターから 提案受け取る'),
                      ),
                    ),
                    RaisedButton(
                      onPressed: (){
                        print('hello there');
                      },
                     color: Color(0xFF31c91a),
                      focusColor: Colors.red,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                        ),
                      ),
                      child: Text('OK',
                        style: TextStyle(
                          fontSize: 26.0,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: size.height*0.09/2),
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
                        hintText: '紹介情報',
                      ),
                    ),
                  ),
                ),

                Divider(
                  height: 18.0,
                  thickness: 2,
                  color: Colors.green,
                  endIndent: 50,
                  indent: 60,
                ),
                SizedBox(height: size.height*0.09/2),
                Center(child: FieldName(text: '物件情報')),
                RaisedButton(
                  onPressed: (){
                    //TODO:1 UI/UX design concept was unclear and hard to implement, Should make argument with teacher
                    Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => BuildingInformationScreen(),
                    ));
                  },
                  color: Color(0xFF31c91a),
                  focusColor: Colors.red,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Text('部屋間どり',
                    style: TextStyle(
                      fontSize: 26.0,
                    ),
                  ),
                ),

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
                      child: Text('新更', style: TextStyle(
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
      ),
    );
  }
}


class TextFieldConstrainer extends StatelessWidget {

  const TextFieldConstrainer({
    Key key, @required this.hintText, @required this.icon, this.height, this.obscure = false,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final double height;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(left:30.0, right: 30.0, bottom: 20.0, top: 5.0),
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
        ),
        obscureText: obscure,
        obscuringCharacter: '•',
      ),
    );
  }
}

class FieldName extends StatelessWidget {
  @override

  const FieldName({
    Key key, @required this.text
  }) : super(key: key);

  final String text;

  Widget build(BuildContext context) {
    return Container(
      child:Text(text,
        style: TextStyle(
          color: Colors.grey[300],
          fontSize: 17.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

