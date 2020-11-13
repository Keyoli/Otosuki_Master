import 'package:flutter/material.dart';
import 'package:flutter_app/Building_Info_Screen/buildingInfoScreen.dart';
import 'package:flutter_app/Building_workRequest_Screen/workRequestForm.dart';
import 'package:flutter_app/home_page.dart';

class workRequestScreen extends StatefulWidget {
  workRequestScreen({
    Key key,
  }) : super(key: key);

  @override
  _workRequestScreenState createState() => _workRequestScreenState();
}

class _workRequestScreenState extends State<workRequestScreen> {
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

  List workNo = ["1","2","3","4","5"];


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
                Text('作業依頼が公開されました。',
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
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) => Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        width: 330.0,
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text('Number: ${workNo[index]}',
                                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
                                    ),

                                    Text('作業依頼情報',
                                      style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                              child: FlatButton(
                                onPressed: (){
                                 // Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomePage()));
                                },
                                color: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, new MaterialPageRoute(
                                      builder: (context) => workRequestForm(),
                                    ));
                                  },
                                    child: Text('交渉中', style: TextStyle(fontSize: 14.0),)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),


                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
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
                      child: Text('トップ画面へ', style: TextStyle(
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
