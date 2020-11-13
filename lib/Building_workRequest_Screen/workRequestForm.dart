import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Building_Info_Screen/BuildingOwnerInfoScreen.dart';

import '../home_page.dart';

class workRequestForm extends StatefulWidget {
  @override
  _workRequestFormState createState() => _workRequestFormState();
}

class _workRequestFormState extends State<workRequestForm> {


  List<String> items = [
    "value 1",
    "value 2",
    "value 3",
    "value 4",
    "value 5",
    "value 6"
  ];

  int selected_item = 0;

  Widget _buildItemPicker(){
    return CupertinoPicker(
        itemExtent: 20.0,
        backgroundColor: CupertinoColors.white,
        onSelectedItemChanged: (index){
          selected_item = index;
          print('Selected:  ${items[selected_item]}');
        },
        children: List<Widget>.generate(items.length, (index){
          return Container(
            child: Center(
              child: Text(items[index],
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  )),
            ),
          );
        },
        )
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
                Text('STEP1',
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

                BottomDetail(title: 'Something Here',),
                TextFieldConstrainer(hintText: 'hint Text', icon: Icons.warning),
                SizedBox(height: size.height*0.09/3),

                BottomDetail(title: 'Something Here',),
                TextFieldConstrainer(hintText: 'hint Text', icon: Icons.warning),
                SizedBox(height: size.height*0.09/3),

                BottomDetail(title: 'Something Here',),
                TextFieldConstrainer(hintText: 'hint Text', icon: Icons.warning),
                SizedBox(height: size.height*0.09/3),

                BottomDetail(title: 'Something Here',),
                TextFieldConstrainer(hintText: 'hint Text', icon: Icons.warning),
                SizedBox(height: size.height*0.09/3),

                BottomDetail(title: 'Something Here',),
                TextFieldConstrainer(hintText: 'hint Text', icon: Icons.warning),
                SizedBox(height: size.height*0.09/3),

                SizedBox(height: size.height*0.09/2),
                Center(child: FieldName(text: 'Slide Here')),
                Divider(
                  height: 18.0,
                  thickness: 2,
                  color: Colors.green,
                  endIndent: 50,
                  indent: 60,
                ),
                SizedBox(height: size.height*0.09/2),

                BottomDetail(title: 'Something Here',),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<int>(
                          context: context,
                          builder: (BuildContext context){
                            return _buildItemPicker();
                          }
                      );
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(color: Colors.red, width: 3.2,),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.warning, size: 28.0, color: Colors.grey[500]),
                            margin: EdgeInsets.all(10.0),
                          ),
                          Center(
                            child: Text('Demo',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(Icons.arrow_drop_down, size: 55.0, color: Colors.grey[500]),
                            margin: EdgeInsets.only(left: 190.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.09/3),

                BottomDetail(title: 'Something Here',),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<int>(
                          context: context,
                          builder: (BuildContext context){
                            return _buildItemPicker();
                          }
                      );
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(color: Colors.red, width: 3.2,),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.warning, size: 28.0, color: Colors.grey[500]),
                            margin: EdgeInsets.all(10.0),
                          ),
                          Center(
                            child: Text('Demo',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(Icons.arrow_drop_down, size: 55.0, color: Colors.grey[500]),
                            margin: EdgeInsets.only(left: 190.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.09/3),


                BottomDetail(title: 'Something Here',),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<int>(
                          context: context,
                          builder: (BuildContext context){
                            return _buildItemPicker();
                          }
                      );
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(color: Colors.red, width: 3.2,),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.warning, size: 28.0, color: Colors.grey[500]),
                            margin: EdgeInsets.all(10.0),
                          ),
                          Center(
                            child: Text('Demo',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(Icons.arrow_drop_down, size: 55.0, color: Colors.grey[500]),
                            margin: EdgeInsets.only(left: 190.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.09/3),


                BottomDetail(title: 'Something Here',),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<int>(
                          context: context,
                          builder: (BuildContext context){
                            return _buildItemPicker();
                          }
                      );
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(color: Colors.red, width: 3.2,),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.warning, size: 28.0, color: Colors.grey[500]),
                            margin: EdgeInsets.all(10.0),
                          ),
                          Center(
                            child: Text('Demo',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(Icons.arrow_drop_down, size: 55.0, color: Colors.grey[500]),
                            margin: EdgeInsets.only(left: 190.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.09/3),


                BottomDetail(title: 'Something Here',),
                Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet<int>(
                          context: context,
                          builder: (BuildContext context){
                            return _buildItemPicker();
                          }
                      );
                    },
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        border: Border.all(color: Colors.red, width: 3.2,),
                      ),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Icon(Icons.warning, size: 28.0, color: Colors.grey[500]),
                            margin: EdgeInsets.all(10.0),
                          ),
                          Center(
                            child: Text('Demo',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            child: Icon(Icons.arrow_drop_down, size: 55.0, color: Colors.grey[500]),
                            margin: EdgeInsets.only(left: 190.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.09/1.3),


                Divider(
                  height: 18.0,
                  thickness: 2,
                  color: Colors.green,
                  endIndent: 50,
                  indent: 60,
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
                        Navigator.of(context).pop();
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

class BottomDetail extends StatelessWidget {
  const BottomDetail({
    Key key, @required this.title, this.width = 68, this.height = 38,
  });

  final String title;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title,
            style: TextStyle(
              fontSize: 22.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: Color(0xFF30cc33),
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                border: Border.all(color: Colors.green, width: 3.2,)
            ),
            child: Center(
              child: Text(
                '123',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class TextFieldConstrainer extends StatelessWidget {

  const TextFieldConstrainer({
    Key key, @required this.hintText, @required this.icon, this.height, this.obscure = false, this.width,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final double height;
  final bool obscure;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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

