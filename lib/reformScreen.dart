import 'package:flutter/material.dart';
import 'package:flutter_app/task_requestScreen.dart';
import 'home_page.dart';

class ReformScreen extends StatefulWidget {
  @override
  _ReformScreenState createState() => _ReformScreenState();
}

class _ReformScreenState extends State<ReformScreen> {

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
            Text('問い合わせが送信されました。'),
              ],
            ),
          ),
          actions: <Widget>[
            Center(
              child: TextButton(
                child: Text('OKEY'),
                onPressed: () {
                  Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => TaskRequestScreen(),
                  ));
                },
              ),
            ),
          ],
        );
      },
    );
  }


  int _radioValue = 0;
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
      switch (_radioValue) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
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
                Text('問い合わせ画面',
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

                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Radio(
                            activeColor: Color(0xFF12ce0c),
                            value: 0,
                            groupValue: _radioValue,
                            onChanged: _handleRadioValueChange,
                          ),
                        ),
                        Text(
                          'クレーター',
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                   Row(
                     children: [
                       Transform.scale(
                         scale: 1.5,
                         child: Radio(
                           value: 1,
                           activeColor: Color(0xFF12ce0c),
                           groupValue: _radioValue,
                           onChanged: _handleRadioValueChange,
                         ),
                       ),
                       Text(
                         'OTASUKE',
                         style: TextStyle(
                           fontSize: 20.0,
                         ),
                       ),
                     ],
                   )
                  ],
                ),
                SizedBox(height: 20.0),

                TextFieldConstrainer(hintText: '返事希望期限', icon: Icons.lock_clock),
                SizedBox(height: size.height*0.09/3),
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
                        hintText: '問い合わせ内容',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
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

